import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/widgets/custom_appbar.dart';
import 'package:vehicle_reseller/presentation/widgets/repair_card.dart';

class RepairPage extends StatelessWidget {
  const RepairPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 125, 125, 125),
        onPressed: () {
          Navigator.of(context).pushNamed('/repairForm');
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppbar(
            appbarTitle: 'Repair',
          ),
          const SizedBox(height: 20),
          const RepairCard(),
        ],
      )),
    );
  }
}
