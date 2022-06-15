import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_reseller/data/model/repair/repair.dart';

part 'repair_event.dart';
part 'repair_state.dart';

class RepairBloc extends Bloc<RepairEvent, RepairState> {
  var tecNumberPlate = TextEditingController();

  var tecDate =
      TextEditingController(text: DateFormat.yMMMd().format(DateTime.now()));
  var tecHeading = TextEditingController();
  var tecAmount = TextEditingController();
  RepairBloc() : super(RepairInitial()) {
    on<RepairEvent>((event, emit) {
      if (event is AddRepair) {
        var numberPlate = tecNumberPlate.text;
        var date = tecDate.text;
        var heading = tecHeading.text;
        var amount = tecAmount.text;

        Repair repair = Repair(
            date: date, carId: 1, heading: heading, amount: int.parse(amount));
        log(numberPlate);
        log(repair.toString());
        emit(RepairStatus(isUpdate: true, message: 'Your Repairs is added'));
      }
    });
  }
}
