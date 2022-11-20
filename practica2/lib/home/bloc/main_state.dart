part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState {}

class MainListeningState extends MainState {}

class MainFinishedState extends MainState {}

class MainMissingValuesState extends MainState {}

class MainSuccessState extends MainState {
  String song, artist, album, date, apple, spotify, image, link;

  MainSuccessState({
    required this.song,
    required this.artist,
    required this.album,
    required this.date,
    required this.apple,
    required this.spotify,
    required this.image,
    required this.link,
  });
}

class MainErrorState extends MainState {}
