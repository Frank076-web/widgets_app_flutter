import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';
import 'package:widgets_app/presentation/providers/providers.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter-screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(isDarkmodeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          actions: [
            IconButton(
              icon: Icon(isDarkMode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              onPressed: () => ref.read(isDarkmodeProvider.notifier).update(
                    (state) => state = !state,
                  ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // ref.read(counterProvider.notifier).state++;
            ref.read(counterProvider.notifier).update(
                  (state) => state + 1,
                );
          },
        ),
        body: const CounterView());
  }
}
