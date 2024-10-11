import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({
    this.isDarkmode = false,
    this.selectedColor = 0,
  })
      : assert(selectedColor >= 0, 'Selected color must be non-negative'),
        assert(selectedColor <= colorList.length - 1,
            'Selected color must be between 0 and ${colorList.length - 1}');

  ThemeData getThemeData() => ThemeData(
        useMaterial3: true,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        // scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: false),
      );
}
