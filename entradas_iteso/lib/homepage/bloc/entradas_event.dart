part of 'entradas_bloc.dart';

abstract class EntradasEvent extends Equatable {
  const EntradasEvent();

  @override
  List<Object> get props => [];
}

class ClickEntradasEvent extends EntradasEvent{

}


class ClickSalidasEvent extends EntradasEvent{

}
