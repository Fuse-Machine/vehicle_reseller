import 'package:flutter/material.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';

class SaleDetails extends StatelessWidget {
  const SaleDetails({Key? key}) : super(key: key);

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
            DividerWithText(text: 'Sale Details'),
            const SizedBox(height: 15),
            _buildRow('Name', 'Prayas Shrestha'),
            const Divider(thickness: 3),
            _buildRow('Phone', '9841705845'),
            const Divider(thickness: 3),
            _buildRow('Total Price', '1550000'),
            const Divider(thickness: 3),
            _buildRow('Transfer Status', 'Passed'),
            const Divider(thickness: 3),
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
