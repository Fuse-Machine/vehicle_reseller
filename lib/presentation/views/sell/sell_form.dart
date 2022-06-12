import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/purchase_details.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class SellForm extends StatelessWidget {
  const SellForm({Key? key}) : super(key: key);

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
            _buildAgentForm(),
            const SizedBox(height: 35),
            const PurchaseDetails(),
            const SizedBox(height: 35),
            _buildPaymentForm(),
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
              hintText: 'Select the dat',
              labelText: 'Date',
              icon: FontAwesomeIcons.calendar,
              readOnly: true,
              onTap: () {},
              controller: TextEditingController(),
            ),
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

  _buildAgentForm() {
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
            DividerWithText(text: 'Buyer\'s Details'),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: Icons.person,
              hintText: 'Rajesh Hamal',
              labelText: 'Name',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.mobile,
              hintText: '9841000000',
              labelText: 'Mobile No',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildPaymentForm() {
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
            DividerWithText(text: 'Seller\'s Details'),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.indianRupeeSign,
              hintText: '1500000',
              labelText: 'Total Amount',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.indianRupeeSign,
              hintText: '1000000',
              labelText: 'Advance Amount',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.calendarDay,
              hintText: '15-May 2022',
              labelText: 'Pass Date',
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
              primary: Colors.red,
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
            child: const Text('SELL')),
      ),
    );
  }
}
