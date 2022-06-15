import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicle_reseller/data/model/user/user.dart';

class Preferences {
  setUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user', jsonEncode(user));
  }

  Future<User> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String stringValue = prefs.getString('user') ??
        jsonEncode(User(
            name: 'Krishna Bdr. Shrestha',
            phone: '9841705844',
            email: 'krishna705844@gmail.com'));

    return User.fromJson(jsonDecode(stringValue));
  }

  removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
  }
}
