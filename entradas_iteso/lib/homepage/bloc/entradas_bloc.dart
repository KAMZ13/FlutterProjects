import 'dart:js_util';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'entradas_event.dart';
part 'entradas_state.dart';

class EntradasBloc extends Bloc<EntradasEvent, EntradasState> {
  //fuente de datos son las variables
  int entradas = 0;
  int salidas = 0;
  int restantes = 0;
  EntradasBloc() : super(EntradasInitial()) {
    on<ClickEntradasEvent>((event, emit) {
      entradas++;
      restantes = entradas - salidas;
      emit(ActualizarEntradasState(e: entradas, s: salidas, r: restantes));
    });
    on<ClickSalidasEvent>((event, emit) {
      salidas++;
      restantes = entradas - salidas;
      emit(ActualizarEntradasState(e: entradas, s: salidas, r: restantes));
    });
  }
}
