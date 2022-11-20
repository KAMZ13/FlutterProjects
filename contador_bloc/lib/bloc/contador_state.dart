part of 'contador_bloc.dart';

abstract class ContadorState extends Equatable {
  const ContadorState();

  @override
  List<Object> get props => [];
}

class ContadorInitial extends ContadorState {}

class ContadorCambiarColorState extends ContadorState {
  final Color nuevoColor;

  ContadorCambiarColorState({required this.nuevoColor});
}

class ActualizarContadorState extends ContadorState {
  final int nuevoValor;

  ActualizarContadorState({required this.nuevoValor});
}
