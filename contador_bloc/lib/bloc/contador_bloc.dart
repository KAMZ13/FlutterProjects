import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'contador_event.dart';
part 'contador_state.dart';

class ContadorBloc extends Bloc<ContadorEvent, ContadorState> {
  int _cont = 0;
  List<Color> _colorList = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.black
  ];
  ContadorBloc() : super(ContadorInitial()) {
    on<ContadorEvent>((event, emit) {});
    on<CambiarColorEvent>(_cambiarColor);
    on<aumentaContadorEvent>(_aumentarContador);
    on<decrementaContadorEvent>(_decrementarContador);
    on<resetearContador>(_resetearContador);
  }

  FutureOr<void> _cambiarColor(
      CambiarColorEvent event, Emitter<ContadorState> emit) {
    emit(ContadorInitial());
    emit(ContadorCambiarColorState(
        nuevoColor: _colorList[event.colorSeleccionado]));
  }

  FutureOr<void> _aumentarContador(
      aumentaContadorEvent event, Emitter<ContadorState> emit) {
    _cont++;
    emit(ActualizarContadorState(nuevoValor: _cont));
  }

  FutureOr<void> _decrementarContador(
      decrementaContadorEvent event, Emitter<ContadorState> emit) {
    _cont--;
    emit(ActualizarContadorState(nuevoValor: _cont));
  }

  FutureOr<void> _resetearContador(
      resetearContador event, Emitter<ContadorState> emit) {
    _cont = 0;
    emit(ActualizarContadorState(nuevoValor: _cont));
  }
}
