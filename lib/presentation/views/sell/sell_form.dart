import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/blocs/sell/sell_bloc.dart';
import 'package:vehicle_reseller/presentation/widgets/alert_dialog_widget.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class SellForm extends StatelessWidget {
  SellForm({Key? key}) : super(key: key);
  final sellFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SellBloc bloc = BlocProvider.of<SellBloc>(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: sellFormKey,
          child: Column(
            children: [
              const SizedBox(height: 35),
              _buildCarForm(bloc),
              const SizedBox(height: 35),
              _buildAgentForm(bloc),
              const SizedBox(height: 35),
              //const PurchaseDetails(),
              const SizedBox(height: 35),
              _buildPaymentForm(bloc),
              const SizedBox(height: 15),
              _buildSubmitButton(context, bloc),
               //Displaying AlertDialog 
              BlocListener<SellBloc, SellState>(
                listener: (context, state) {
                  if (state is SoldStatus) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialogWidget(
                          status: 'success',
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

  _buildCarForm(SellBloc bloc) {
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
              controller: bloc.tecDate,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: Icons.numbers,
              hintText: 'BA 1 JA 0000',
              labelText: 'NUMBER PLATE',
              controller: bloc.tecNumberPlate,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildAgentForm(SellBloc bloc) {
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
              controller: bloc.tecBuyerName,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.mobile,
              hintText: '9841000000',
              labelText: 'Mobile No',
              controller: bloc.tecBuyerPhone,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _buildPaymentForm(SellBloc bloc) {
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

  _buildSubmitButton(BuildContext context, SellBloc bloc) {
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
              if (sellFormKey.currentState!.validate()) {
                log('validate');
                bloc.add(SellCar());
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
              // bloc.add(SellCar());
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
