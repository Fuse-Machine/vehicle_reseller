import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_reseller/presentation/views/buy_page.dart';
import 'package:vehicle_reseller/presentation/views/home_page.dart';
import 'package:vehicle_reseller/presentation/views/sell_page.dart';

import '../blocs/bottom_nav_bar_cubit.dart';

class BottomNavigationTab extends StatelessWidget {
  const BottomNavigationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomNavBarCubit bottomNavBarCubit = BottomNavBarCubit();
    return Scaffold(
      body: _navBarMenu(context, bottomNavBarCubit),
      bottomNavigationBar: _bottomNavigationTab(bottomNavBarCubit),
    );
  }

  StreamBuilder<NavBarItem> _navBarMenu(
      BuildContext context, BottomNavBarCubit bottomNavBarCubit) {
    return StreamBuilder<NavBarItem>(
        stream: bottomNavBarCubit.itemStream,
        initialData: bottomNavBarCubit.defaultItem,
        builder: (context, snapshot) {
          switch (snapshot.data) {
            case NavBarItem.home:
              return const HomePage();
            case NavBarItem.buy:
              return const BuyPage();
            case NavBarItem.sell:
              return const SellPage();

            default:
              return const SizedBox.shrink();
          }
        });
  }

  StreamBuilder<NavBarItem> _bottomNavigationTab(
      BottomNavBarCubit bottomNavBarCubit) {
    return StreamBuilder(
        stream: bottomNavBarCubit.itemStream,
        initialData: bottomNavBarCubit.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return ConvexAppBar(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.blue,
            height: 60,
            top: -25,
            //activeColor: Color.fromARGB(255, 255, 255, 255),
            items: const [
              TabItem(icon: Icons.shopping_cart_checkout, title: 'Sell'),
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.shopping_cart, title: 'Buy'),
            ],
            initialActiveIndex: 1, //optional, default as 0
            onTap: bottomNavBarCubit.pickItem,
          );
        });
  }
}
