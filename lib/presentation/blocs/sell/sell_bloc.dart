import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_reseller/data/model/buyer/buyer.dart';
import 'package:vehicle_reseller/data/model/sell/sell.dart';
import 'package:vehicle_reseller/data/repositories/sell_repository.dart';
part 'sell_event.dart';
part 'sell_state.dart';

class SellBloc extends Bloc<SellEvent, SellState> {
  //car controller
  var tecNumberPlate = TextEditingController();

  //Buyer Details
  var tecBuyerName = TextEditingController();
  var tecBuyerPhone = TextEditingController();

  //Sell Controller
  var tecDate =
      TextEditingController(text: DateFormat.yMMMd().format(DateTime.now()));
  var tecTotalAmount = TextEditingController();
  var tecAdvanceAmount = TextEditingController();
  var tecExpectedPassdate = TextEditingController(
      text: DateFormat.yMMMd()
          .format(DateTime.now().add(const Duration(days: 10))));

  SellBloc() : super(SellInitial()) {
    on<SellEvent>((event, emit) async {
      if (event is SellCar) {
        log('Event Called');
        var numberPlate = tecNumberPlate.text;
        var name = tecBuyerName.text;
        var phone = tecBuyerPhone.text;
        var date = tecDate.text;
        var totalAmount = tecTotalAmount.text;
        var advanceAmount = tecAdvanceAmount.text;
        var expectedPassdate = tecExpectedPassdate.text;

        Buyer buyer = Buyer(name: name, phone: phone);

        Sell sell = Sell(
            date: date,
            buyerId: 1,
            buyId: 1,
            totalAmount: int.parse(totalAmount),
            advanceAmount: int.parse(advanceAmount),
            expectedPassdate: expectedPassdate);

        log('Car: $numberPlate');
        log('Buyer: $buyer');
        log('Sell: $sell');
        emit(SoldStatus(
            isSold: true,
            message: 'Your ${numberPlate.toUpperCase()} is Sold'));
      }

      if (event is FetchSellData) {
        log('event is called');
        List<Sell>? sells = await SellRepository().getAll();
        log(sells.toString());
        emit(ReceivedSellData(sells: null));
      }
    });
  }
}
