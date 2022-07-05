import 'package:flutter/material.dart';

class ThemeController {
  static ThemeData _themeDataPrimary() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.amberAccent,
    );
  }

  static ThemeData _themeDataDark() {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }

  static ThemeData get themeDataPrimary => _themeDataPrimary();
  static ThemeData get themeDataDark => _themeDataDark();
}
