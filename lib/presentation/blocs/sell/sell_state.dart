part of 'sell_bloc.dart';

abstract class SellState {}

class SellInitial extends SellState {}

class SoldStatus extends SellState {
  bool isSold;
  String message;
  SoldStatus({required this.isSold, required this.message});
}
