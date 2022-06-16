part of 'repair_bloc.dart';

abstract class RepairState {}

class RepairInitial extends RepairState {}

class RepairStatus extends RepairState {
  String status;
  String message;
  RepairStatus({required this.status, required this.message});
}
