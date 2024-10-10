import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String routeName;
  final IconData icon;
  final String path;
  final Widget widget;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.routeName,
    required this.icon,
    required this.path,
    required this.widget,
  });
}

List<MenuItem> appMenuItems = const [
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    routeName: ButtonsScreen.name,
    icon: Icons.home,
    path: '/buttons',
    widget: ButtonsScreen(),
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    routeName: CardsScreen.name,
    icon: Icons.credit_card,
    path: '/cards',
    widget: CardsScreen(),
  ),
  MenuItem(
    title: 'ProgressIdicators',
    subTitle: 'Generales y controlados',
    routeName: ProgressScreen.name,
    icon: Icons.refresh_rounded,
    path: '/progressScreen',
    widget: ProgressScreen(),
  ),
];
