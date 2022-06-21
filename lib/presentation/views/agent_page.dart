import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/blocs/statement/statement_bloc.dart';
import 'package:vehicle_reseller/presentation/widgets/custom_appbar.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
class AgentPage extends StatelessWidget {
  const AgentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 125, 125, 125),
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppbar(
            appbarTitle: 'Statements',
          ),
          const SizedBox(height: 20),
          BlocBuilder<StatementBloc, StatementState>(
            builder: (context, state) {
              if (state is ReceivedStatementData) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _buildStatementCard(state),
                    ],
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      )),
    );
  }

  Card _buildStatementCard(ReceivedStatementData state) {
    int buyTotalAmount = 0;
    int buyReceivedAmount = 0;
    int sellTotalAmount = 0;
    int sellGivenAmount = 0;
    for (var buy in state.buys) {
      buyTotalAmount += buy!['totalAmount'] as int;
      buyReceivedAmount += buy['advanceAmount'] as int;
    }
    for (var sell in state.sells) {
      sellTotalAmount += sell!['totalAmount'] as int;
      sellGivenAmount += sell['advanceAmount'] as int;
    }
    return Card(
      elevation: 10,
      color: const Color.fromARGB(255, 225, 225, 225),
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DividerWithText(text: 'Current Status'),
            const SizedBox(height: 15),
            _buildRow('Total Purchased Cars', state.buys.length.toString()),
            const Divider(thickness: 3),
            _buildRow('Total Amount', buyTotalAmount.toString()),
            const Divider(thickness: 3),
            _buildRow('Received Amount', buyReceivedAmount.toString()),
            const Divider(thickness: 6),
            const SizedBox(height: 15),
            _buildRow('Total Sold Cars', '10'),
            const Divider(thickness: 3),
            _buildRow('Total Amount', sellTotalAmount.toString()),
            const Divider(thickness: 3),
            _buildRow('Given Amount', sellGivenAmount.toString()),
            const Divider(thickness: 3),
            DividerWithText(text: 'Availables'),
            const Divider(thickness: 3),
            _buildRow('Total Available',
                (state.buys.length - state.sells.length).toString()),
            const Divider(thickness: 3),
            _buildRow('Total Purchased Price',
                (buyTotalAmount - sellTotalAmount).toString()),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
