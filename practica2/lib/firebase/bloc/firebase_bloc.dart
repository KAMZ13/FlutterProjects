import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'package:firebase_auth/firebase_auth.dart';

part 'Firebase_event.dart';
part 'Firebase_state.dart';

class FireBBloc extends Bloc<FireBEvent, FireBState> {
  FireBBloc() : super(FireBInitial()) {
    on<AddFavouriteMusicEvent>(addFavSong);
    on<RemoveFavouriteMusicEvent>(rmFavSong);
    on<GetFavouriteMusicEvent>(getFavouriteList);
  }

  Future<void> addFavSong(
      AddFavouriteMusicEvent event, Emitter<FireBState> emitter) async {
    emit(FireBAddFavSongLoading());
    try {
      DocumentReference<Map<String, dynamic>> userCollection =
          getUserCollection();

      Map<String, dynamic>? collection = (await userCollection.get()).data();

      if (collection == null) {
        print("Could not retrieve collection");
        return null;
      }
      List<dynamic> favourites = collection['user-favourites'];
      if (favourites.isEmpty) {
        favourites.add(event.favourite);
        await userCollection.update({'user-favourites': favourites});
        emit(FireBAddFavSongSuccess());
      } else {
        for (var i in favourites) {
          if (i['songName'] == event.favourite['songName'] &&
              i['artistName'] == event.favourite['artistName']) {
            emit(FireBAddFavSongExists());
            return;
          }
        }
        favourites.add(event.favourite);
        await userCollection.update({'user-favourites': favourites});
        emit(FireBAddFavSongSuccess());
      }
    } catch (e) {
      emit(FireBAddFavSongError());
    }
  }

  Future<void> rmFavSong(
      RemoveFavouriteMusicEvent event, Emitter<FireBState> emitter) async {
    emit(FireBRemoveFavSongLoading());
    try {
      DocumentReference<Map<String, dynamic>> userCollection =
          getUserCollection();

      Map<String, dynamic>? collection = (await userCollection.get()).data();

      if (collection == null) {
        return null;
      }
      List<dynamic> favourites = collection['user-favourites'];
      favourites.removeAt(event.index);

      await userCollection.update({'user-favourites': favourites});
      emit(FireBRemoveFavSongSuccess());
    } catch (e) {
      emit(FireBRemoveFavSongError());
    }
  }

  Future<void> getFavouriteList(event, emit) async {
    emit(FireBGetFavMusicLoading());
    try {
      DocumentReference<Map<String, dynamic>> userCollection =
          getUserCollection();

      Map<String, dynamic>? collection = (await userCollection.get()).data();

      if (collection == null) {
        return null;
      }
      List<dynamic> favourites = collection['user-favourites'];
      if (favourites.isEmpty) {
        emit(FireBGetFavMusicIsEmpty());
      } else {
        emit(FireBGetFavMusicSuccess(favourites: favourites));
      }
    } catch (e) {
      emit(FireBGetFavMusicError());
    }
  }

  DocumentReference<Map<String, dynamic>> getUserCollection() {
    final userCollection = FireBFirestore.instance
        .collection('users')
        .doc(FireBAuth.instance.currentUser!.uid);
    return userCollection;
  }
}
