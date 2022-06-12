import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class AgentCard extends StatelessWidget {
  String name;
  String phone;
  String numberPlate;
  String model;
  int totalAmount;
  String expectedPassdate;

  AgentCard({
    Key? key,
    required this.name,
    required this.phone,
    required this.numberPlate,
    required this.model,
    required this.totalAmount,
    required this.expectedPassdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text(
                  name.toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.mobile,
                      color: Colors.blue,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(phone,
                        style:
                            const TextStyle(fontSize: 13, letterSpacing: .3)),
                  ],
                ),
                const SizedBox(height: 6),
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
                        const SizedBox(
                          width: 5,
                        ),
                        Text(numberPlate.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 13, letterSpacing: .3)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(model,
                            style: const TextStyle(
                                fontSize: 13, letterSpacing: .3)),
                        const SizedBox(width: 5),
                        const Icon(
                          FontAwesomeIcons.carRear,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.indianRupeeSign,
                          color: Colors.blue,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(totalAmount.toString(),
                            style: const TextStyle(
                                fontSize: 13, letterSpacing: .3)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(expectedPassdate.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 13, letterSpacing: .3)),
                        const SizedBox(width: 5),
                        const Icon(
                          FontAwesomeIcons.calendarDay,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 6),
              ],
            ),
          )
        ],
      ),
    );
  }
}
