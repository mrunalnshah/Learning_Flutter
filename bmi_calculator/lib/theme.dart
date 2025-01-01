import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      color: Color(0xFF0A0E21),
    ),
    scaffoldBackgroundColor: Color(0xFF0A0E21),
  );
}
