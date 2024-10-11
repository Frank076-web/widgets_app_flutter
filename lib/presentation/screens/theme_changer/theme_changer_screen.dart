import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';
import 'package:widgets_app/presentation/providers/providers.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(isDarkmodeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme changer'),
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
        body: const ThemeChangerView());
  }
}
