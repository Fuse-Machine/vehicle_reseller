import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TransactionCard extends StatelessWidget {
  String type;
  String numberPlate;
  String name;
  int amount;
  TransactionCard(
      {Key? key,
      required this.type,
      required this.numberPlate,
      required this.name,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        //height: 100,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: (type == 'buy') ? Colors.green : Colors.red,
          elevation: 10,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Vehicle Plate',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      numberPlate.toUpperCase(),
                      style:
                          const TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                const Divider(thickness: 1, color: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'purchased from',
                      style:  TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      name.toUpperCase(),
                      style:
                          const TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                const Divider(thickness: 1, color: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Purchased Amount',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Text(
                     amount.toString(),
                      style:
                          const TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
