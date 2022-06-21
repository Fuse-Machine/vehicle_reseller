import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_reseller/data/model/buy/buy.dart';
import 'package:vehicle_reseller/data/model/car/car.dart';
import 'package:vehicle_reseller/data/model/seller/seller.dart';
import 'package:vehicle_reseller/data/repositories/buy_repository.dart';
import 'package:vehicle_reseller/data/repositories/car_repository.dart';
import 'package:vehicle_reseller/data/repositories/seller_repository.dart';

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
    on<BuyEvent>((event, emit) async {
      if (event is BuyCar) {
        try {
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
          //insert into car
          var carResult = await CarRepository().insert(car);
          //check result
          if (carResult > 0) {
            //car is inserted properly

            //Seller Values
            var name = tecSellerName.text;
            var phone = tecSellerPhone.text;

            Seller seller = Seller(name: name, phone: phone);
            //insert into seller
            var sellerResult = await SellerRepository().insert(seller);
            //check Result
            if (sellerResult > 0) {
              // car is inserted, seller is inserted
              //  Buy Values
              var date = tecDate.text;
              var totalAmount = tecTotalAmount.text;
              var advanceAmount = tecAdvanceAmount.text;
              var expectedPassdate = tecExpectedPassdate.text;
              //get carId and SellerId;
              int carId = await CarRepository().getCar(numberPlate);
              int sellerId = await SellerRepository().getSeller(phone);

              Buy buy = Buy(
                  date: date,
                  carId: carId,
                  sellerId: sellerId,
                  totalAmount: int.parse(totalAmount),
                  advanceAmount: int.parse(advanceAmount),
                  expectedPassdate: expectedPassdate);
              //insert into Buy
              var buyResult = await BuyRepository().insert(buy);
              //check result
              if (buyResult > 0) {
                //Car, Seller and Buy Inserted properly
                emit(BoughtStatus(
                    status: 'success', message: '$numberPlate is Purchased'));
              } else {
                //Car and seller inserted but buy is not inserted
                emit(BoughtStatus(
                    status: 'error',
                    message: 'Transaction has not been recorded.'));
              }
            } else {
              //car is inserted, but seller is not inserted
              emit(BoughtStatus(
                  status: 'error',
                  message:
                      'Car has been recored but Seller has not been recorded.'));
            }
          } else {
            //car is not inserted properly
            emit(BoughtStatus(
                status: 'error', message: 'Car has not been recorded.'));
          }
        } catch (error) {
          emit(BoughtStatus(status: 'error', message: error.toString()));
        }
        // try {
        //   //Car values
        //   var numberPlate = tecNumberPlate.text;
        //   var type = tecType.text;
        //   var model = tecModel.text;
        //   var color = tecColor.text;
        //   var year = tecYear.text;

        //   Car car = Car(
        //       numberPlate: numberPlate,
        //       type: type,
        //       model: model,
        //       color: color,
        //       year: year);
        //   // log(car.toString());
        //   //Seller Values
        //   var name = tecSellerName.text;
        //   var phone = tecSellerPhone.text;

        //   Seller seller = Seller(name: name, phone: phone);

        //   //log('Seller: $seller');

        //   //Buy Values
        //   var date = tecDate.text;
        //   var totalAmount = tecTotalAmount.text;
        //   var advanceAmount = tecAdvanceAmount.text;
        //   var expectedPassdate = tecExpectedPassdate.text;

        //   Buy buy = Buy(
        //       date: date,
        //       carId: 1,
        //       sellerId: 1,
        //       totalAmount: int.parse(totalAmount),
        //       advanceAmount: int.parse(advanceAmount),
        //       expectedPassdate: expectedPassdate);
        //   //log(buy.toString());

        //   var carResult = await CarRepository().insert(car);
        //   log('Car Result: $carResult');
        //   if (carResult > 0) {
        //     log(numberPlate);
        //     var car = await CarRepository().getCar(numberPlate);

        //     log(car.toString());
        //     log('carId: ${car!.id}');
        //     // if (carId != 0) {
        //     //   //seller values
        //     //   var name = tecSellerName.text;
        //     //   var phone = tecSellerPhone.text;

        //     //   Seller seller = Seller(name: name, phone: phone);
        //     //   log(seller.toString());
        //     //   var sellerResult = await SellerRepository().insert(seller);
        //     //   log('Seller result: $sellerResult');
        //     //   if (sellerResult > 0) {
        //     //     var sellerId = await SellerRepository().getId(phone);
        //     //     log('Seller Id: $sellerId');
        //     //     if (sellerId != 0) {
        //     //       //Buy Values
        //     //       var date = tecDate.text;
        //     //       var totalAmount = tecTotalAmount.text;
        //     //       var advanceAmount = tecAdvanceAmount.text;
        //     //       var expectedPassdate = tecExpectedPassdate.text;

        //     //       Buy buy = Buy(
        //     //           date: date,
        //     //           carId: 1,
        //     //           sellerId: 1,
        //     //           totalAmount: int.parse(totalAmount),
        //     //           advanceAmount: int.parse(advanceAmount),
        //     //           expectedPassdate: expectedPassdate);
        //     //       log(buy.toString());
        //     //       var buyResult = await BuyRepository().insert(buy);

        //     //       log('Buy Result $buyResult');
        //     //       if (buyResult > 0) {
        //     //         emit(BoughtStatus(
        //     //             status: 'success',
        //     //             message: '$numberPlate has been Purchased'));
        //     //       } else {
        //     //         emit(BoughtStatus(
        //     //             status: 'status', message: 'Buy is not inserted'));
        //     //       }
        //     //     } else {
        //     //       emit(BoughtStatus(
        //     //           status: 'error',
        //     //           message: 'No Seller id has been initialized'));
        //     //     }
        //     //   }
        //     //   emit(BoughtStatus(
        //     //       status: 'error', message: '$name is not inserted'));
        //     // } else {
        //     //   emit(BoughtStatus(
        //     //       status: 'error', message: 'No Car id has been initialized'));
        //     // }
        //   } else {
        //     emit(BoughtStatus(
        //         status: 'error', message: '$numberPlate is not inserted'));
        //   }

        //   //Seller values

        //   // log('Buy: $buy');
        //   // emit(BoughtStatus(
        //   //     status: 'success',
        //   //     message:
        //   //         'Thank you for Purchasing ${numberPlate.toUpperCase()}'));
        // } catch (error) {
        //   log(error.toString());
        // }
      }

      if (event is FetchBuyData) {
        log('event is called');
        // Buy? buy = await BuyRepository().getBought();
        // log(buy.toString());
        emit(ReceivedBuyData(buy: null));
      }
    });
  }
}
