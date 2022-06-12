import 'dart:async';

enum NavBarItem { sell, buy, home }

class BottomNavBarCubit {
  final StreamController<NavBarItem> _navBarController =
      StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItem = NavBarItem.home;

  Stream<NavBarItem> get itemStream => _navBarController.stream;

  void pickItem(int index) {
    switch (index) {
      case 0:
        _navBarController.sink.add(NavBarItem.sell);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.home);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.buy);
        break;

      default:
        _navBarController.sink.add(NavBarItem.home);
    }
  }

  close() {
    _navBarController.close();
  }
}
