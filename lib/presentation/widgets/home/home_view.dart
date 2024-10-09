import 'package:flutter/material.dart';
import 'package:widgets_app/config/index.dart';
import 'package:widgets_app/presentation/widgets/index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = appMenuItems;

    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];

        return HomeListTile(menuItem: item);
      },
    );
  }
}
