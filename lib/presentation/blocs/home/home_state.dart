part of 'home_bloc.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class ReceivedHomeData extends HomeState {
  int totalStatements;
  int totalAgents;
  int totalCars;
  int totalRepairs;
  ReceivedHomeData(
      {required this.totalStatements,
      required this.totalAgents,
      required this.totalCars,
      required this.totalRepairs});
}
