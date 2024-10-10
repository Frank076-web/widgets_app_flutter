import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: AppTutorialView(),
    );
  }
}
