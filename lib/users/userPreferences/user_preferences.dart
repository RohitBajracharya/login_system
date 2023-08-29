import 'dart:convert';

import '../model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberUserPrefs {
  //to remember user info
  static Future<void> saveRememberUser(User userInfo) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userJsonData = jsonEncode(userInfo.toJson());
    await preferences.setString("currentUser", userJsonData);
  }
}
