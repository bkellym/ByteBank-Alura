import 'package:flutter/material.dart';

class Tema {
  static ThemeData getTema() {
    return ThemeData(
      colorScheme: ColorScheme(
        primary: getPrimaryColor(), // ok
        primaryVariant: Colors.pink.shade100,
        secondary: getSecundaryColor(),
        secondaryVariant: Colors.green.shade100,
        surface: Colors.deepPurple.shade600, // ok
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

  static Color getPrimaryColor() {
    return Colors.purple.shade300;
  }

  static Color getSecundaryColor() {
    return Colors.deepOrange.shade400;
  }
}
