part of 'entradas_bloc.dart';

abstract class EntradasState extends Equatable {
  const EntradasState();

  @override
  List<Object> get props => [];
}

class EntradasInitial extends EntradasState {}

class ActualizarEntradasState extends EntradasState {
  final int e;
  final int s;
  final int r;

  ActualizarEntradasState({required this.e, required this.s, required this.r});
  @override
  // TODO: implement props
  List<Object> get props => [e, s, r];
}
