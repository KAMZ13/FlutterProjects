import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  Auth _Auth = Auth();
  AuthBloc() : super(AuthInitial()) {
    on<VerifyAuthEvent>(_authVerification);
    on<SignOutEvent>(_signOut);
    on<GoogleAuthEvent>(_authUser);
  }

  FutureOr<void> _authVerification(event, emit) {
    //initialize data from app
    if (_Auth.isAlreadyAuthenticated()) {
      emit(AuthSuccessState());
    } else {
      emit(UnAuthState());
    }
  }

  FutureOr<void> _signOut(event, emit) async {
    await _Auth.signOutFirebaseUser();
    await _Auth.signOutGoogleUser();
    emit(SignOutSuccessState());
  }

  FutureOr<void> _authUser(event, emit) async {
    try {
      await _Auth.signInWithGoogle();
      emit(AuthSuccessState());
    } catch (e) {
      emit(AuthErrorState());
    }
  }
}
