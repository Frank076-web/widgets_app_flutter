import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});

  List<MenuItem> appMenuItems = [
    MenuItem(
      title: 'Botones',
      subTitle: 'Discover the world',
      link: '/',
      icon: Icons.home,
    ),
    MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/card',
      icon: Icons.credit_card,
    ),
  ];
}
