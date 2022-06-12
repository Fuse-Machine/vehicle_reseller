import 'package:flutter/material.dart';

class RepairTable extends StatelessWidget {
  const RepairTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(
        label: Text(
          'Date',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      DataColumn(
        label: Text(
          'Heading',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      DataColumn(
        label: Text(
          'Amount',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ], rows: [
      _buildRepairRow('12-may, 2022', 'Daint paint', 20000),
      _buildRepairRow('15-may, 2022', 'Headlight Change', 5000),
    ]);
  }

  DataRow _buildRepairRow(String date, String heading, int amount) {
    return DataRow(cells: [
      DataCell(Text(date.toUpperCase())),
      DataCell(Text(heading)),
      DataCell(Text(amount.toString())),
    ]);
  }
}
