part of 'repair_bloc.dart';

abstract class RepairState {}

class RepairInitial extends RepairState {}

class RepairStatus extends RepairState {
  bool isUpdate;
  String message;
  RepairStatus({required this.isUpdate, required this.message});
}
