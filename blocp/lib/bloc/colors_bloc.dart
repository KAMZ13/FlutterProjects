import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'colors_event.dart';
part 'colors_state.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorsState> {
  ColorsBloc() : super(ColorsInitial()) {
    on<ChangeColorEvent>((event, emit) {
      if (event.i == 0) {
        emit(ChangeColorBlueState());
      } else if (event.i == 1) {
        emit(ChangeColorRedState());
      } else if (event.i == 2) {
        emit(ChangeColorGreenState());
      } else
        emit(ColorsInitial());
    });
  }
}
