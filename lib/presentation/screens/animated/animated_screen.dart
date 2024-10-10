import 'dart:math' show Random;
import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10;

  void _changeShape() {
    final random = Random();

    width = random.nextInt(300) + 120;
    height = random.nextInt(300) + 120;
    borderRadius = random.nextInt(300) + 20;

    color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(1) - 0.4.toDouble(),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _changeShape,
          child: const Icon(Icons.play_arrow),
        ),
        body: AnimatedView(
          width: width,
          height: height,
          borderRadius: borderRadius,
          color: color,
        ));
  }
}
