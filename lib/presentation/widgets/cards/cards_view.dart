import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/cards/cards.dart';

List<Map<String, dynamic>> cards = const [
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ...cards.map((card) => CardType1(
              label: card['label'],
              elevation: card['elevation'],
            )),
        ...cards.map((card) => CardType2(
              label: card['label'],
              elevation: card['elevation'],
            )),
        ...cards.map((card) => CardType3(
              label: card['label'],
              elevation: card['elevation'],
            )),
        ...cards.map((card) => CardType4(
              label: card['label'],
              elevation: card['elevation'],
            )),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
