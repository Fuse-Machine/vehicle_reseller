part of 'sell_bloc.dart';

abstract class SellEvent {}

class SellCar extends SellEvent {}

class FetchSellData extends SellEvent {}
