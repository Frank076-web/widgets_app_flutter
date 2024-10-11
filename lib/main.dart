import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/config.dart';
import 'package:widgets_app/presentation/providers/providers.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(selectedColorProvider);
    final isDarkmode = ref.watch(isDarkmodeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: AppTheme(
        selectedColor: selectedColor,
        isDarkmode: isDarkmode,
      ).getThemeData(),
      routerConfig: appRouter,
    );
  }
}
