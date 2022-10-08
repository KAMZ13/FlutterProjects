part of 'colors_bloc.dart';

abstract class ColorsState extends Equatable {
  const ColorsState();

  @override
  List<Object> get props => [];
}

class ColorsInitial extends ColorsState {}

class ChangeColorBlueState extends ColorsState {}

class ChangeColorRedState extends ColorsState {}

class ChangeColorGreenState extends ColorsState {}
