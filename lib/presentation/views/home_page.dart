

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/data/model/user/user.dart';
import 'package:vehicle_reseller/presentation/blocs/home/home_bloc.dart';
import 'package:vehicle_reseller/presentation/blocs/statement/statement_bloc.dart';
import 'package:vehicle_reseller/presentation/blocs/user/user_bloc.dart';
import 'package:vehicle_reseller/presentation/views/statement_page.dart';
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
                //Populate tables with static datas
                // int value = await SampleData().populateDatabase();
                // if (value == 1) {
                //   log('Inserted');
                // } else if (value == 0) {
                //   log('Something is Wrong');
                // }

                // //display Datas
                // SampleData().displayAllData();

                // //Empty all tables
                // SampleData().delete();
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
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state is ReceivedHomeData) {
                          return _buildIconCard(context, state);
                        }
                        return const SizedBox.shrink();
                      },
                    ),
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

  _buildIconCard(BuildContext context, ReceivedHomeData state) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                IconCard(
                  backgroundColor: const Color.fromARGB(255, 175, 250, 250),
                  title: 'Statement',
                  icon: FontAwesomeIcons.buildingColumns,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider(
                          create: (context) =>
                              StatementBloc()..add(FetchStatementData()),
                          child: const Statementpage(),
                        ),
                      ),
                    );
                    // Navigator.of(context).pushNamed('/statementPage');
                  },
                ),
                (state.totalStatements != 0)
                    ? CircleAvatar(
                        radius: 20,
                        child: Text((state.totalStatements.toString())),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            Stack(
              children: [
                IconCard(
                  backgroundColor: const Color.fromARGB(255, 250, 175, 250),
                  title: 'Agents',
                  icon: FontAwesomeIcons.person,
                  onTap: () {
                    Navigator.of(context).pushNamed('/sellForm');
                  },
                ),
                (state.totalAgents != 0)
                    ? CircleAvatar(
                        radius: 20,
                        child: Text((state.totalAgents.toString())),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                IconCard(
                  backgroundColor: const Color.fromARGB(255, 250, 250, 195),
                  title: 'Cars',
                  icon: FontAwesomeIcons.car,
                  onTap: () {},
                ),
                (state.totalCars != 0)
                    ? CircleAvatar(
                        radius: 20,
                        child: Text((state.totalCars.toString())),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            Stack(
              children: [
                IconCard(
                  backgroundColor: const Color.fromARGB(255, 180, 180, 180),
                  title: 'Repairs',
                  icon: FontAwesomeIcons.screwdriverWrench,
                  onTap: () {
                    Navigator.of(context).pushNamed('/repairPage');
                  },
                ),
                (state.totalRepairs != 0)
                    ? CircleAvatar(
                        radius: 20,
                        child: Text((state.totalRepairs.toString())),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
