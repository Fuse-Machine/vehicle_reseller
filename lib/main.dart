import 'package:flutter/material.dart';
import 'package:vehicle_reseller/config/routing/route_generator.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const BottomNavigationTab(),
      //home: const BottomNavigationTab(),
    );
  }
}
