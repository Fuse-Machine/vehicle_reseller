import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_reseller/data/repositories/car_repository.dart';

part 'statement_event.dart';
part 'statement_state.dart';

class StatementBloc extends Bloc<StatementEvent, StatementState> {
  StatementBloc() : super(StatementInitial()) {
    on<StatementEvent>((event, emit) async {
      if (event is FetchStatementData) {
        // log('Fetch Statement Data Event Called');
        var buys = await CarRepository().getPurchasedStatement();
        var sells = await CarRepository().getSoldStatement();
        emit(ReceivedStatementData(buys: buys!, sells: sells!));
      }
    });
  }
}
