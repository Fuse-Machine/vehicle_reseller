import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/repair_card.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class RepairForm extends StatelessWidget {
  const RepairForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 35),
            _buildCarForm(),
            const SizedBox(height: 35),
            const RepairCard(),
            const SizedBox(height: 35),
            _buildRepairForm(),
            const SizedBox(height: 15),
            _buildSubmitButton(context),
          ],
        ),
      )),
    );
  }

  Card _buildCarForm() {
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
            DividerWithText(text: 'Car Details'),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: Icons.numbers,
              hintText: 'BA 1 JA 0000',
              labelText: 'NUMBER PLATE',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
            ),
            onPressed: () {
              //bloc.add(BuyVechicleEvent());

              // showDialog(
              //     context: context,
              //     barrierDismissible: false, // user must tap button!
              //     builder: (BuildContext context) {
              //       return BlocProvider(
              //         create: (context) => BuyBloc()..add(BuyVechicleEvent()),
              //         child: BlocBuilder<BuyBloc, BuyState>(
              //           builder: (context, state) {
              //             if (state is InsertionStatus) {
              //               return _buildAlert(context, state);
              //             }
              //             return Container();
              //           },
              //         ),
              //       );
              //     }
              //     //return const SizedBox.shrink();

              //     );
            },
            child: const Text('REPAIR')),
      ),
    );
  }

  _buildRepairForm() {
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
            DividerWithText(text: 'Repair\'s Details'),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.calendarDay,
              hintText: 'select date',
              labelText: 'Date',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.screwdriverWrench,
              hintText: 'title of repair',
              labelText: 'Heading',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.indianRupeeSign,
              hintText: '25000',
              labelText: 'Amount',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
