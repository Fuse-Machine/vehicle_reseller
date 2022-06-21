import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_reseller/data/repositories/buy_repository.dart';
import 'package:vehicle_reseller/data/repositories/buyer_repository.dart';
import 'package:vehicle_reseller/data/repositories/car_repository.dart';
import 'package:vehicle_reseller/data/repositories/repair_repository.dart';
import 'package:vehicle_reseller/data/repositories/sell_repository.dart';
import 'package:vehicle_reseller/data/repositories/seller_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is FetchHomeData) {
        try {
          int totalStatements = 0;
          int totalAgents = 0;
          int totalCars = 0;
          int totalRepairs = 0;

          totalStatements = await BuyRepository().getTotal() +
              await SellRepository().getTotal();
          totalAgents = await BuyerRepository().getTotal() +
              await SellerRepository().getTotal();
          totalCars = await CarRepository().getTotal();
          totalRepairs = await RepairRepository().getTotal();

          emit(ReceivedHomeData(
              totalStatements: totalStatements,
              totalAgents: totalAgents,
              totalCars: totalCars,
              totalRepairs: totalRepairs));
        } catch (error) {
          log(error.toString());
        }
      }
    });
  }
}
