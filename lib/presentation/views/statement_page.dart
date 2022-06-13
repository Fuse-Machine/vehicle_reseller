
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/views/custom_appbar.dart';

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
          Column(
            children: [
              _buildStatementList(context),
            ],
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
}
