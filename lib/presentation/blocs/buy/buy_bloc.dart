

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_reseller/data/model/buy/buy.dart';
import 'package:vehicle_reseller/data/model/car/car.dart';
import 'package:vehicle_reseller/data/model/seller/seller.dart';

part 'buy_event.dart';
part 'buy_state.dart';

class BuyBloc extends Bloc<BuyEvent, BuyState> {
  //car controller
  var tecDate =
      TextEditingController(text: DateFormat.yMMMd().format(DateTime.now()));
  var tecNumberPlate = TextEditingController();
  var tecType = TextEditingController();
  var tecModel = TextEditingController();
  var tecColor = TextEditingController();
  var tecYear = TextEditingController();

  //Seller Details
  var tecSellerName = TextEditingController();
  var tecSellerPhone = TextEditingController();

  //Sell Controller

  var tecTotalAmount = TextEditingController();
  var tecAdvanceAmount = TextEditingController();
  var tecExpectedPassdate = TextEditingController(
      text: DateFormat.yMMMd()
          .format(DateTime.now().add(const Duration(days: 10))));

  BuyBloc() : super(BuyInitial()) {
    on<BuyEvent>((event, emit) {
      if (event is BuyCar) {
       
        //Car values
        var numberPlate = tecNumberPlate.text;
        var type = tecType.text;
        var model = tecModel.text;
        var color = tecColor.text;
        var year = tecYear.text;

        Car car = Car(
            numberPlate: numberPlate,
            type: type,
            model: model,
            color: color,
            year: year);

        //Seller values
        var name = tecSellerName.text;
        var phone = tecSellerPhone.text;

        Seller seller = Seller(name: name, phone: phone);

        //Buy Values
        var date = tecDate.text;
        var totalAmount = tecTotalAmount.text;
        var advanceAmount = tecAdvanceAmount.text;
        var expectedPassdate = tecExpectedPassdate.text;

        Buy buy = Buy(
            date: date,
            carId: 1,
            sellerId: 1,
            totalAmount: int.parse(totalAmount),
            advanceAmount: int.parse(advanceAmount),
            expectedPassdate: expectedPassdate);

        log('Car: $car');
        log('Seller: $seller');
        log('Buy: $buy');
        emit(BoughtStatus(
            isBought: true,
            message: 'Thank you for Purchasing ${numberPlate.toUpperCase()}'));
      }
    });
  }
}
