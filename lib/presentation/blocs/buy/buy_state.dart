part of 'buy_bloc.dart';

abstract class BuyState {}

class BuyInitial extends BuyState {}

class ReceivedBuyData extends BuyState {
  Buy? buy;
  ReceivedBuyData({required this.buy});
}

class BoughtStatus extends BuyState {
  String status;
  String message;
  BoughtStatus({required this.status, required this.message});
}
