part of 'contador_bloc.dart';

abstract class ContadorEvent extends Equatable {
  const ContadorEvent();

  @override
  List<Object> get props => [];
}

class CambiarColorEvent extends ContadorEvent {
  final int colorSeleccionado;

  CambiarColorEvent({required this.colorSeleccionado});
}

class aumentaContadorEvent extends ContadorEvent {}

class decrementaContadorEvent extends ContadorEvent {}

class resetearContador extends ContadorEvent {}
