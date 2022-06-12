import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/data/model/owner/owner.dart';
import 'package:vehicle_reseller/presentation/widgets/home/home_widets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 35),
              NameCard(
                owner: Owner(
                    name: 'Krishna Bdr. Shrestha',
                    phone: '98417058455',
                    email: 'krishna705844@gmail.com'),
              ),
              const SizedBox(height: 35),
              _buildIconCard(context),
              const SizedBox(height: 35),
              //_buildTransactionCard(),
            ],
          ),
        ),
      ),
    );
  }

  _buildIconCard(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconCard(
              backgroundColor: const Color.fromARGB(255, 175, 250, 250),
              title: 'Statement',
              icon: FontAwesomeIcons.buildingColumns,
              onTap: () {},
            ),
            IconCard(
              backgroundColor: const Color.fromARGB(255, 250, 175, 250),
              title: 'Transfer',
              icon: FontAwesomeIcons.arrowRightArrowLeft,
              onTap: () {
                Navigator.of(context).pushNamed('/sellForm');
              },
            ),
            //IconCard(text: 'Transaction', icon: Icons.money),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconCard(
              backgroundColor: const Color.fromARGB(255, 250, 250, 195),
              title: 'Cars',
              icon: FontAwesomeIcons.car,
              onTap: () {
                Navigator.of(context).pushNamed('/carPage');
              },
            ),

            IconCard(
              backgroundColor: const Color.fromARGB(255, 180, 180, 180),
              title: 'Repairs',
              icon: FontAwesomeIcons.screwdriverWrench,
              onTap: () {
                Navigator.of(context).pushNamed('/repairPage');
              },
            ),
            //IconCard(text: 'Transaction', icon: Icons.money),
          ],
        ),
      ],
    );
  }
}
