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

class ShazamInitial extends ShazamState {}

class ShazamRedirectSpotify extends ShazamState {}

class ShazamRedirectAppleMusic extends ShazamState {}

class ShazamRedirectYoutube extends ShazamState {}

class ShazamRecord extends ShazamState {}

class ShazamPost extends ShazamState {}

class ShazamInfoFound extends ShazamState {}

class ShazamInfoNotFound extends ShazamState {}
