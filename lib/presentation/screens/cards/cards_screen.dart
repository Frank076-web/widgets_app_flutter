import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class CardsScreen extends StatelessWidget {
  static const name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const CardsView(),
    );
  }
}
