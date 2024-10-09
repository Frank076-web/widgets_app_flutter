import 'package:flutter/material.dart';
import 'package:widgets_app/config/index.dart';

class HomeListTile extends StatelessWidget {
  final MenuItem menuItem;

  const HomeListTile({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        Navigator.pushNamed(context, menuItem.link);
      },
    );
  }
}
