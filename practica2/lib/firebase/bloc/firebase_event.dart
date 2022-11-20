part of 'firebase_bloc.dart';

abstract class FireBEvent extends Equatable {
  const FireBEvent();

  @override
  List<Object> get props => [];
}

class GetFavouriteMusicEvent extends FireBEvent {}

class RemoveFavouriteMusicEvent extends FireBEvent {
  final int index;

  RemoveFavouriteMusicEvent({required this.index});
  @override
  List<Object> get props => [this.index];
}

class AddFavouriteMusicEvent extends FireBEvent {
  final Map<String, dynamic> favourite;

  AddFavouriteMusicEvent({required this.favourite});
  @override
  List<Object> get props => [this.favourite];
}
