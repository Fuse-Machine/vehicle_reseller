import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/widgets/custom_appbar.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';

import 'package:vehicle_reseller/presentation/widgets/purchase_details.dart';
import 'package:vehicle_reseller/presentation/widgets/sale_details.dart';

class Statementpage extends StatelessWidget {
  const Statementpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 125, 125, 125),
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppbar(
            appbarTitle: 'Statements',
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
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
                        DividerWithText(text: 'Current Status'),
                        const SizedBox(height: 15),
                        _buildRow('Total Purchased Cars', '16'),
                        const Divider(thickness: 3),
                        _buildRow('Total Amount', '5500000'),
                        const Divider(thickness: 3),
                        _buildRow('Received Amount', '2000000'),
                        const Divider(thickness: 6),
                        const SizedBox(height: 15),
                        _buildRow('Total Sold Cars', '10'),
                        const Divider(thickness: 3),
                        _buildRow('Total Amount', '4000000'),
                        const Divider(thickness: 3),
                        _buildRow('Given Amount', '2000000'),
                        const Divider(thickness: 3),
                        DividerWithText(text: 'Availables'),
                        const Divider(thickness: 3),
                        _buildRow('Total Available', '6'),
                        const Divider(thickness: 3),
                        _buildRow('Total Purchased Price', '2500000'),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
                _buildStatementList(context),
              ],
            ),
          ),
        ],
      )),
    );
  }

  _buildStatementList(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(28.0),
                        child: PurchaseDetails(),
                      ),
                    );
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green,
                ),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.blue,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text('ba 1 jha 1996'.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                      '22-May,2022'.toUpperCase(),
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Column(
                          children: const [
                            PurchaseDetails(),
                            SaleDetails(),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red,
                ),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.blue,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text('ba 1 jha 1996'.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                      '22-May,2022'.toUpperCase(),
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _buildRow(String title, String value) {
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
