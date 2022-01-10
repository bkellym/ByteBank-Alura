import 'package:flutter/material.dart';

class Tema {
  static ThemeData getTema() {
    return ThemeData(
      colorScheme: ColorScheme(
        primary: Colors.green.shade900,
        primaryVariant: Colors.pink.shade100,
        secondary: Colors.green,
        secondaryVariant: Colors.green.shade100,
        surface: Colors.deepPurple.shade600,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.black,
        brightness: Brightness.light,
      ),
    );
  }
}
