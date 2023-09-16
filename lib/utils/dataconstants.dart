import 'package:flutter/material.dart';
import 'color_schemes.g.dart';

class DataConstants {
  static bool isDarkMode = false;
  static ThemeMode _themeMode = ThemeMode.light;

  static ThemeMode get themeMode => _themeMode;

  static set themeMode(ThemeMode value) {
    _themeMode = value;
  }
}
