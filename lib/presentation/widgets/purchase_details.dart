import 'package:flutter/material.dart';
import 'package:vehicle_reseller/presentation/views/repair/repair_table.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';

// ignore: must_be_immutable
class PurchaseDetails extends StatelessWidget {
  String name;
  String phone;
  String numberPlate;
  String totalPrice;
  String transferStatus;

  PurchaseDetails(
      {Key? key,
      required this.name,
      required this.phone,
      required this.numberPlate,
      required this.totalPrice,
      required this.transferStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            DividerWithText(text: 'Purchased Details'),
            const SizedBox(height: 15),
            _buildRow('Name', name),
            const Divider(thickness: 3),
            _buildRow('Phone', phone),
            const Divider(thickness: 3),
            _buildRow('Number Plate', numberPlate.toUpperCase()),
            const Divider(thickness: 3),
            _buildRow('Total Price', totalPrice),
            const Divider(thickness: 3),
            _buildRow('Transfer Status', transferStatus),
            const Divider(thickness: 3),
            // _buildRow('Expenses', '25000'),
            // const Divider(thickness: 3),
            const RepairTable(),
          ],
        ),
      ),
    );
  }

  Row _buildRow(String title, String value) {
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
