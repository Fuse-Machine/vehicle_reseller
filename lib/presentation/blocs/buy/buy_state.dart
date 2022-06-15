part of 'buy_bloc.dart';

abstract class BuyState {}

class BuyInitial extends BuyState {}

class BoughtStatus extends BuyState {
  bool isBought;
  String message;
  BoughtStatus({required this.isBought, required this.message});
}
