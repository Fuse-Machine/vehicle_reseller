import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/views/custom_appbar.dart';
import 'package:vehicle_reseller/presentation/widgets/purchase_details.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 125, 125, 125),
        onPressed: () {
          Navigator.of(context).pushNamed('/buyForm');
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppbar(
            appbarTitle: 'Cars',
          ),
          const SizedBox(height: 20),
          FlipCard(
            fill: Fill.fillFront,
            front: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                _buildCarCard(),
                _buildSoldText(),
              ],
            ),
            back: const Padding(
              padding: EdgeInsets.all(28.0),
              child: PurchaseDetails(),
            ),
          ),
          const SizedBox(height: 15),
        ],
      )),
    );
  }

  Positioned _buildSoldText() {
    return const Positioned(
      top: 10,
      left: 5,
      child: RotationTransition(
          turns: AlwaysStoppedAnimation(315 / 360),
          child: Text(
            'Sold',
            style: TextStyle(
              fontSize: 23,
              decoration: TextDecoration.underline,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  _buildCarCard() {
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
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.person,
                              color: Colors.blue,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('Ram hari Shrestha'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 13, letterSpacing: .3)),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('model',
                                style:
                                    TextStyle(fontSize: 13, letterSpacing: .3)),
                            SizedBox(width: 5),
                            Icon(
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
                            Text('totalAmount'.toString(),
                                style: const TextStyle(
                                    fontSize: 13, letterSpacing: .3)),
                          ],
                        ),
                        Row(
                          children: [
                            Text('expectedPassdate'.toUpperCase(),
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
        ),
      ],
    );
  }
}
