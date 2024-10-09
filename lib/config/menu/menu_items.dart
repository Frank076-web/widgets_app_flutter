import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String routeName;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.routeName,
      required this.icon});
}

List<MenuItem> appMenuItems = const [
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    routeName: ButtonsScreen.name,
    icon: Icons.home,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    routeName: CardsScreen.name,
    icon: Icons.credit_card,
  ),
];
