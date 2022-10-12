part of 'shazam_bloc.dart';

abstract class ShazamState extends Equatable {
  const ShazamState();

  @override
  List<Object> get props => [];
}

//Favorites state: redirect user to spotify
//Song state: redirect user to spotify
//Song state: redirect user to AppleMusic
//Song state:redirect user to youtube
//HomePage state: change glow to true and start recording
//HomePage state:POST de el snippet de cancion y busca mientras se muestra un loading
//HomePage state: se encuentra la info de la cancion y se redirige al user a la pagina de detalles
//HomePage state: No se encuentra la informacion de la cancion y se muestra un mensaje de error
//HomePage state: Glow to true and redirect user to favorites

class ShazamInitial extends ShazamState {}

class ShazamRedirectSpotifyState extends ShazamState {
  //declaro la variable del URL
  //en el estado se manda cuando se emite.
}

class ShazamRedirectAppleMusicState extends ShazamState {}

class ShazamRedirectYoutubeState extends ShazamState {}

class ShazamRecordState extends ShazamState {}

class ShazamPostState extends ShazamState {}

class ShazamInfoFoundState extends ShazamState {
  final Map<String, String> info;

  ShazamInfoFoundState(this.info);
}

class ShazamAddToFavoritesState extends ShazamState {}

class ShazamGoToFavoritesState extends ShazamState {}
