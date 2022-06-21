part of 'statement_bloc.dart';

abstract class StatementState {}

class StatementInitial extends StatementState {}

class ReceivedStatementData extends StatementState {
  List<Map<String, dynamic>?> buys;
  List<Map<String, dynamic>?> sells;

  ReceivedStatementData({required this.buys, required this.sells});
}
