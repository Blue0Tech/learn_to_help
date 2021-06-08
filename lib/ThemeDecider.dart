import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'global.dart' as global;

class ThemeDecider {
  static fetchTheme() async {
    // var prefs = await SharedPreferences.getInstance();
    // return prefs.getString('theme') ?? 'green';
    return 'green';
  }
  static decide() {
    return global.theme ?? 'green';
  }
}