import 'package:flutter/material.dart';

class CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const CardType3({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surface,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined), onPressed: () {}),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled'),
            )
          ],
        ),
      ),
    );
  }
}
