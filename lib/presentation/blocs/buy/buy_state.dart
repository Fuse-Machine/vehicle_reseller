part of 'buy_bloc.dart';

abstract class BuyState {}

class BuyInitial extends BuyState {}

class BoughtStatus extends BuyState {
  String status;
  String message;
  BoughtStatus({required this.status, required this.message});
}
