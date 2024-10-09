import 'package:flutter/material.dart';
import 'package:widgets_app/config/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme(selectedColor: 1).getThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets App'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
