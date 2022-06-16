import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_reseller/data/model/repair/repair.dart';
import 'package:vehicle_reseller/data/repositories/car_repository.dart';
import 'package:vehicle_reseller/data/repositories/repair_repository.dart';

part 'repair_event.dart';
part 'repair_state.dart';

class RepairBloc extends Bloc<RepairEvent, RepairState> {
  var tecNumberPlate = TextEditingController();

  var tecDate =
      TextEditingController(text: DateFormat.yMMMd().format(DateTime.now()));
  var tecHeading = TextEditingController();
  var tecAmount = TextEditingController();
  RepairBloc() : super(RepairInitial()) {
    on<RepairEvent>((event, emit) async {
      if (event is AddRepair) {
        try {
          var numberPlate = tecNumberPlate.text;
          var date = tecDate.text;
          var heading = tecHeading.text;
          var amount = tecAmount.text;
          int carId = await CarRepository().getCar(numberPlate);
          if (carId != 0) {
            //found CarId
            Repair repair = Repair(
                date: date,
                carId: carId,
                heading: heading,
                amount: int.parse(amount));
            var repairResult = await RepairRepository().insert(repair);
            if (repairResult > 0) {
              //Repair inserted
              emit(RepairStatus(
                  status: 'success', message: '$numberPlate is Repaired'));
            } else {
              //Repair not inserted
              emit(RepairStatus(
                  status: 'error', message: 'Repair is not Recorded'));
            }
          } else {
            //car id not found
            emit(RepairStatus(status: 'error', message: 'Car id Not Found'));
          }
        } catch (error) {
          emit(RepairStatus(status: 'error', message: error.toString()));
        }
      }
    });
  }
}
