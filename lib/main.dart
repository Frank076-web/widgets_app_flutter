import 'package:flutter/material.dart';
import 'package:widgets_app/config/config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: AppTheme(selectedColor: 0).getThemeData(),
      routerConfig: appRouter,
    );
  }
}
