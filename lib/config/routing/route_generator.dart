import 'package:flutter/material.dart';
import 'package:vehicle_reseller/presentation/views/buy/buy_form.dart';
import 'package:vehicle_reseller/presentation/views/buy_page.dart';
import 'package:vehicle_reseller/presentation/views/car_page.dart';
import 'package:vehicle_reseller/presentation/views/home_page.dart';
import 'package:vehicle_reseller/presentation/views/settings_page.dart';
import 'package:vehicle_reseller/presentation/views/repair/repair_form.dart';
import 'package:vehicle_reseller/presentation/views/repair_page.dart';
import 'package:vehicle_reseller/presentation/views/sell/sell_form.dart';
import 'package:vehicle_reseller/presentation/views/sell_page.dart';
import 'package:vehicle_reseller/presentation/views/statement_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());

      case '/sellPage':
        return MaterialPageRoute(builder: (_) => const SellPage());
      // if (args is List<Car>) {
      //   return MaterialPageRoute(builder: (_) {
      //     return BlocProvider(
      //       create: (_) => CarBloc(),
      //       child: CarListView(
      //         cars: args,
      //       ),
      //     );
      //   });

      case '/buyPage':
        return MaterialPageRoute(builder: (_) => const BuyPage());
      case '/repairPage':
        return MaterialPageRoute(builder: (_) => const RepairPage());
      case '/buyForm':
        return MaterialPageRoute(builder: (_) => const BuyForm());
      case '/sellForm':
        return MaterialPageRoute(builder: (_) => const SellForm());
      case '/repairForm':
        return MaterialPageRoute(builder: (_) => const RepairForm());
      case '/carPage':
        return MaterialPageRoute(builder: (_) => const CarPage());
      case '/settingsPage':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case '/statementPage':
        return MaterialPageRoute(builder: (_) => const Statementpage());
    }

    return _errorRoute(settings.name);

    //     case '/carSearchView':
    //       return MaterialPageRoute(builder: (_) {
    //         return BlocProvider(
    //           create: (_) => CarBloc(),
    //           child: CarListView(),
    //         );
    //       });

    //     case '/buyerListView':
    //       if (args is List<Buyer>) {
    //         return MaterialPageRoute(
    //             builder: (_) => BuyerListView(
    //                   buyers: args,
    //                 ));
    //       }

    //       return _errorRoute(settings.name);

    //     case '/buyVehiclePage':
    //       return MaterialPageRoute(
    //           builder: (_) => BlocProvider(
    //                 create: (context) => BuyBloc(),
    //                 child: const BuyPage(),
    //               ));

    //     case '/sellVehiclePage':
    //       return MaterialPageRoute(
    //           builder: (_) => BlocProvider(
    //                 create: (context) => SellBloc(),
    //                 child: const SellPage(),
    //               ));

    //     case '/repairVehiclePage':
    //       return MaterialPageRoute(
    //           builder: (_) => BlocProvider(
    //                 create: (context) => RepairBloc(),
    //                 child: const RepairPage(),
    //               ));

    //     case '/sellerListView':
    //       if (args is List<Seller>) {
    //         return MaterialPageRoute(
    //             builder: (_) => SellerListView(
    //                   sellers: args,
    //                 ));
    //       }

    //       return _errorRoute(settings.name);
    //     case '/buyListView':
    //       if (args is List<Map<String, dynamic>>) {
    //         return MaterialPageRoute(
    //             builder: (_) => BuyListView(
    //                   buyDatas: args,
    //                 ));
    //       }

    //       return _errorRoute(settings.name);

    //     case '/sellListView':
    //       if (args is List<Map<String, dynamic>>) {
    //         return MaterialPageRoute(
    //             builder: (_) => SellListView(
    //                   sellDatas: args,
    //                 ));
    //       }

    //       return _errorRoute(settings.name);

    //     case '/repairListView':
    //       if (args is List<Map<String, dynamic>>) {
    //         return MaterialPageRoute(
    //             builder: (_) => RepairListView(
    //                   repairDatas: args,
    //                 ));
    //       }

    //       return _errorRoute(settings.name);

    //     case '/carView':
    //       if (args is int) {
    //         return MaterialPageRoute(
    //             builder: (_) => CarView(
    //                   carId: args,
    //                 ));
    //       }

    //       return _errorRoute(settings.name);

    //     default:
    //       return _errorRoute(settings.name);
    //   }
  }

  static Route _errorRoute(String? routeName) {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(child: Text('No Route defined for $routeName')),
            ));
  }
}
