import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_reseller/config/routing/route_generator.dart';
import 'package:vehicle_reseller/presentation/blocs/buy/buy_bloc.dart';
import 'package:vehicle_reseller/presentation/blocs/repair/repair_bloc.dart';
import 'package:vehicle_reseller/presentation/blocs/sell/sell_bloc.dart';
import 'package:vehicle_reseller/presentation/blocs/user/user_bloc.dart';
import 'package:vehicle_reseller/presentation/views/bottom_navigation_tab.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UserBloc()..add(FetchUser()),
          ),
          BlocProvider(
            create: (context) => BuyBloc(),
          ),
          BlocProvider(
            create: (context) => SellBloc(),
          ),
          BlocProvider(
            create: (context) => RepairBloc(),
          ),
        ],
        child: const BottomNavigationTab(),
      ),
    );
  }
}
