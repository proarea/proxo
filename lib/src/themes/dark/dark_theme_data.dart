import 'package:flutter/material.dart';

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  dividerColor: Colors.grey.shade400,
  backgroundColor: Colors.black26,
  cardColor: const Color.fromARGB(255, 59, 59, 59),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
