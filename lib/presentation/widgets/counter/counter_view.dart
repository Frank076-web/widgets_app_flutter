import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counterValue = ref.watch(counterProvider);

    final textStyle = Theme.of(context).textTheme.titleLarge;

    return Center(
      child: Text(
        'Valor: $counterValue',
        style: textStyle,
      ),
    );
  }
}
