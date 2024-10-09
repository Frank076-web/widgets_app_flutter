import 'package:flutter/material.dart';
import 'package:widgets_app/config/index.dart';
import 'package:widgets_app/presentation/screens/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme(selectedColor: 1).getThemeData(),
        home: const HomeScreen()
    );
  }
}
