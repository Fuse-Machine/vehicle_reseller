import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/blocs/buy/buy_bloc.dart';
import 'package:vehicle_reseller/presentation/widgets/alert_dialog_widget.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class BuyForm extends StatelessWidget {
  BuyForm({Key? key}) : super(key: key);
  final buyFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    BuyBloc bloc = BlocProvider.of<BuyBloc>(context);

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: buyFormKey,
          child: Column(
            children: [
              const SizedBox(height: 35),
              _buildCarForm(bloc),

              const SizedBox(height: 35),
              _buildAgentForm(bloc),
              const SizedBox(height: 35),
              _buildPaymentForm(bloc),
              const SizedBox(height: 15),
              _buildSubmitButton(context, bloc),
              //Displaying AlertDialog
              BlocListener<BuyBloc, BuyState>(
                listener: (context, state) {
                  if (state is BoughtStatus) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialogWidget(
                          status: state.status,
                          message: state.message,
                        );
                      },
                    );
                  }
                },
                child: const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      )),
    );
  }

  _buildCarForm(BuyBloc bloc) {
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
              hintText: 'Select the date',
              labelText: 'Date',
              icon: FontAwesomeIcons.calendar,
              readOnly: true,
              controller: bloc.tecDate,
              onTap: () {},
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
                icon: Icons.numbers,
                hintText: 'BA 1 JA 0000',
                labelText: 'NUMBER PLATE',
                controller: bloc.tecNumberPlate),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.carRear,
              hintText: 'Taxi or Car',
              labelText: 'Vechicle Type',
              controller: bloc.tecType,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: Icons.menu,
              hintText: 'Alto, Maruti 800',
              labelText: 'Model',
              controller: bloc.tecModel,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: Icons.colorize,
              hintText: 'White,Silver',
              labelText: 'color',
              controller: bloc.tecColor,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.calendarDay,
              hintText: '2004,2005',
              labelText: 'Manufactre Year',
              controller: bloc.tecYear,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildAgentForm(BuyBloc bloc) {
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
              icon: Icons.person,
              hintText: 'Rajesh Hamal',
              labelText: 'Name',
              controller: bloc.tecSellerName,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.mobile,
              hintText: '9841000000',
              labelText: 'Mobile No',
              controller: bloc.tecSellerPhone,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildPaymentForm(BuyBloc bloc) {
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
              controller: bloc.tecTotalAmount,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.indianRupeeSign,
              hintText: '1000000',
              labelText: 'Advance Amount',
              controller: bloc.tecAdvanceAmount,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.calendarDay,
              hintText: '15-May 2022',
              labelText: 'Pass Date',
              controller: bloc.tecExpectedPassdate,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildSubmitButton(BuildContext context, BuyBloc bloc) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {
              if (buyFormKey.currentState!.validate()) {
                BlocProvider.of<BuyBloc>(context).add(BuyCar());
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.lightBlue,
                    content: const Text(
                      'Please fill up the required fields',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {},
                      textColor: Colors.white,
                    ),
                  ),
                );
              }
            },
            child: const Text('BUY')),
      ),
    );
  }
}
