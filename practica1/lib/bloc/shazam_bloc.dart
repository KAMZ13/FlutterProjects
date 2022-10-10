import 'package:practica1/repository/http_request.dart';
import 'dart:async';
import 'package:record/record.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart';
part 'shazam_event.dart';
part 'shazam_state.dart';

class ShazamBloc extends Bloc<ShazamEvent, ShazamState> {
  final record = Record();
  final int recordTime = 5;
  var savedSong = null;
  ShazamBloc() : super(ShazamInitial()) {
    on<ShazamGoToFavoritesEvent>(_goToFavorites);
    on<ShazamRecordEvent>(_recording);
    on<ShazamReturnToDetailsEvent>(_redirectToDetails);
    on<ShazamRedirectSpotifyEvent>(_redirectSpotify);
    on<ShazamRedirectAppleMusicEvent>(_redirectAppleMusic);
    on<ShazamRedirectYoutubeEvent>(_redirectYouTube);
    on<ShazamAddToFavoritesEvent>(_AddToFavorites);
  }

  FutureOr<void> _goToFavorites(
      ShazamGoToFavoritesEvent event, Emitter<ShazamState> emit) {
    emit(ShazamGoToFavoritesState());
  }

  FutureOr<void> _recording(
      ShazamRecordEvent event, Emitter<ShazamState> emit) async {
    bool isRecording = true;
    if (await record.hasPermission()) {
      emit(ShazamRecordState());
      await record.start(
          encoder: AudioEncoder.aacLc, bitRate: 128000, samplingRate: 44100);
      await Future.delayed(Duration(seconds: 5));
    }
    savedSong = await record.stop();
    isRecording = false;
    if (!isRecording) {
      emit(ShazamPostState());
      Map<String, String> info = await receive(savedSong);
      if (savedSong != null) {
        emit(ShazamInfoFoundState(info));
      }
    }
  }

  FutureOr<void> _redirectToDetails(
      ShazamReturnToDetailsEvent event, Emitter<ShazamState> emit) async {
    var songInfo = await receive(savedSong);
  }

  FutureOr<void> _redirectSpotify(
      ShazamRedirectSpotifyEvent event, Emitter<ShazamState> emit) {}

  FutureOr<void> _redirectAppleMusic(
      ShazamRedirectAppleMusicEvent event, Emitter<ShazamState> emit) {}

  FutureOr<void> _redirectYouTube(
      ShazamRedirectYoutubeEvent event, Emitter<ShazamState> emit) {}

  FutureOr<void> _AddToFavorites(
      ShazamAddToFavoritesEvent event, Emitter<ShazamState> emit) {}
}
