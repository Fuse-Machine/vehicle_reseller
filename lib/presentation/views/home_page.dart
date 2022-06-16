import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/data/model/user/user.dart';
import 'package:vehicle_reseller/data/repositories/car_repository.dart';
import 'package:vehicle_reseller/data/repositories/repair_repository.dart';
import 'package:vehicle_reseller/presentation/blocs/user/user_bloc.dart';
import 'package:vehicle_reseller/presentation/widgets/home/home_widets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is ReceivedUserData) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                var car = await CarRepository().getAll();
                // var seller = await SellerRepository().getAll();
                // var buy = await BuyRepository().getAll();
                var repair = await RepairRepository().getAll();
                log(car.toString());
                // log(seller.toString());
                // log(buy.toString());
                log(repair.toString());
              },
              child: const Icon(Icons.add),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        if (state is ReceivedUserData) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/settingsPage');
                            },
                            child: NameCard(
                                user: User(
                                    name: state.user.name,
                                    phone: state.user.phone,
                                    email: state.user.email)),
                          );
                        }
                        return const Text('No Received data');
                      },
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

        return Container();
      },
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
              onTap: () {
                Navigator.of(context).pushNamed('/statementPage');
              },
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
