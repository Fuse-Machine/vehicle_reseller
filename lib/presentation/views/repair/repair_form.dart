import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/blocs/repair/repair_bloc.dart';
import 'package:vehicle_reseller/presentation/widgets/alert_dialog_widget.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/repair_card.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class RepairForm extends StatelessWidget {
  RepairForm({Key? key}) : super(key: key);

  final repairFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    RepairBloc bloc = BlocProvider.of<RepairBloc>(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: repairFormKey,
          child: Column(
            children: [
              const SizedBox(height: 35),
              _buildCarForm(bloc),
              const SizedBox(height: 35),
              const RepairCard(),
              const SizedBox(height: 35),
              _buildRepairForm(bloc),
              const SizedBox(height: 15),
              _buildSubmitButton(context),
               BlocListener<RepairBloc, RepairState>(
                listener: (context, state) {
                  if (state is RepairStatus) {
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

  _buildCarForm(RepairBloc bloc) {
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
              controller: bloc.tecNumberPlate,
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
           if (repairFormKey.currentState!.validate()) {
                BlocProvider.of<RepairBloc>(context).add(AddRepair());
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
            child: const Text('REPAIR')),
      ),
    );
  }

  _buildRepairForm(RepairBloc bloc) {
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
              controller: bloc.tecDate,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.screwdriverWrench,
              hintText: 'title of repair',
              labelText: 'Heading',
              controller: bloc.tecHeading,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.indianRupeeSign,
              hintText: '25000',
              labelText: 'Amount',
              controller: bloc.tecAmount,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  // _buildAlert(BuildContext context, RepairStatus state) {
  //   return AlertDialog(
  //     backgroundColor: (state.isUpdate == true)
  //         ? const Color.fromARGB(255, 59, 139, 62)
  //         : Colors.red,
  //     title: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         (state.isUpdate == true)
  //             ? const Icon(
  //                 Icons.check,
  //                 size: 35,
  //                 color: Colors.white,
  //               )
  //             : const Icon(
  //                 Icons.error,
  //                 size: 35,
  //                 color: Colors.white,
  //               ),
  //         const SizedBox(width: 10),
  //         Text(
  //           (state.isUpdate == true) ? 'SUCCESSFUL !!!' : 'UN-SUCESSFUL !!!',
  //           style: const TextStyle(fontSize: 20, color: Colors.white),
  //         ),
  //       ],
  //     ),
  //     content: Text(state.message),
  //     actions: <Widget>[
  //       ElevatedButton(
  //         style: ElevatedButton.styleFrom(
  //           primary: Colors.green,
  //         ),
  //         onPressed: () {
  //           Navigator.of(context).pushNamed(
  //             '/',
  //           );
  //         },
  //         child: Row(
  //           children: const [
  //             Icon(Icons.home),
  //             SizedBox(width: 5),
  //             Text('Home'),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // _showDialog() {
  //   return BlocListener<RepairBloc, RepairState>(
  //     listener: (context, state) {
  //       if (state is RepairStatus) {
  //         showDialog(
  //           context: context,
  //           builder: (BuildContext context) {
  //             return _buildAlert(context, state);
  //           },
  //         );
  //       }
  //     },
  //     child: const SizedBox.shrink(),
  //   );
  // }

}
