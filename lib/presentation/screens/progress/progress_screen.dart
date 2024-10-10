import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProgressView()
    );
  }
}
