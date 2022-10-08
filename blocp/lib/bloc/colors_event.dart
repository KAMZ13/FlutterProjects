part of 'colors_bloc.dart';

abstract class ColorsEvent extends Equatable {
  const ColorsEvent();

  @override
  List<Object> get props => [];
}

class ChangeColorEvent extends ColorsEvent {
  final int i;

  ChangeColorEvent({required this.i});
  @override
  List<Object> get props => [i];
}
