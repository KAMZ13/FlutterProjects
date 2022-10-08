import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shazam_event.dart';
part 'shazam_state.dart';

class ShazamBloc extends Bloc<ShazamEvent, ShazamState> {
  ShazamBloc() : super(ShazamInitial()) {
    on<ShazamEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
