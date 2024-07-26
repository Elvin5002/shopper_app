part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class HomeGridState extends HomeState {
  final bool buttonView;

  HomeGridState({required this.buttonView});
}
