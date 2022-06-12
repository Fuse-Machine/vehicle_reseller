import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RepairCard extends StatelessWidget {
  const RepairCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromARGB(255, 225, 225, 225),
          ),

          width: double.infinity,
          //height: 110,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.car,
                              color: Colors.blue,
                              size: 20,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              'ba 1 jha 1996'.toUpperCase(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                        const Text(
                          '25000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    DataTable(columns: const [
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
                    ])
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  DataRow _buildRepairRow(String date, String heading, int amount) {
    return DataRow(cells: [
      DataCell(Text(date.toUpperCase())),
      DataCell(Text(heading)),
      DataCell(Text(amount.toString())),
    ]);
  }
}
