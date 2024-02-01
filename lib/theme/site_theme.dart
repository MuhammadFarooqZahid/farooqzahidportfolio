import 'package:flutter/material.dart';

class SiteTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: 'IBMPlexMono',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          fontSize: 50,
          height: 1.5,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontSize: 30,
          height: 1.5,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
