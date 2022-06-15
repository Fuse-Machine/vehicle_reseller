import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/widgets/custom_appbar.dart';
import 'package:vehicle_reseller/presentation/widgets/agent_card.dart';

class SellPage extends StatelessWidget {
  const SellPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 125, 125, 125),
        onPressed: () {
          Navigator.of(context).pushNamed('/sellForm');
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppbar(
            appbarTitle: 'Sell',
          ),
          const SizedBox(height: 20),
          _buildAgentCard(),
        ],
      )),
    );
  }

  _buildAgentCard() {
    return Column(
      children: [
        AgentCard(
            name: 'Prayas shrestha',
            phone: '9841705845',
            numberPlate: 'ba 1 jha 1996',
            model: 'taxi',
            totalAmount: 1540000,
            expectedPassdate: '12-may, 2022'),
        AgentCard(
            name: 'Ram hari shrestha',
            phone: '9841705845',
            numberPlate: 'ba 1 jha 1996',
            model: 'taxi',
            totalAmount: 1540000,
            expectedPassdate: '12-may, 2022'),
      ],
    );
  }
}
