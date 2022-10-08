part of 'shazam_bloc.dart';

//Favorites event: when tapping image takes you to spotify
//Song event: touch spotify to open song in spotify
//Song event: touch icon to open song in AppleMusic
//Song event: touch icon to open song in youtube
//HomePage event: touch avatarglow to begin recording
//HomePage event: touch heart to add to favorites

abstract class ShazamEvent extends Equatable {
  const ShazamEvent();

  @override
  List<Object> get props => [];
}

class ReturnToDetails extends ShazamEvent {}

class ShazamRedirectSpotifyEvent extends ShazamEvent {}

class ShazamRedirectAppleMusicEvent extends ShazamEvent {}

class ShazamRedirectYoutubeEvent extends ShazamEvent {}

class ShazamRecordEvent extends ShazamEvent {}

class ShazamAddToFavoritesEvent extends ShazamEvent {}
