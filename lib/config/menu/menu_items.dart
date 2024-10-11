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
    title: 'Progress Idicators',
    subTitle: 'Generales y controlados',
    routeName: ProgressScreen.name,
    icon: Icons.refresh_rounded,
    path: '/progressScreen',
    widget: ProgressScreen(),
  ),
  MenuItem(
    title: 'Snackbars y Diálogos',
    subTitle: 'Indicadores en pantalla',
    routeName: SnackbarScreen.name,
    icon: Icons.info_outline,
    path: '/snackbar',
    widget: SnackbarScreen(),
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful widget animado',
    routeName: AnimatedScreen.name,
    icon: Icons.check_box_outline_blank_rounded,
    path: '/animatedContainer',
    widget: AnimatedScreen(),
  ),
  MenuItem(
    title: 'Ui Controls + Tiles',
    subTitle: 'Una serie de controles de FLutter',
    routeName: UiControlsScreen.name,
    icon: Icons.car_rental_outlined,
    path: '/ui-controls',
    widget: UiControlsScreen(),
  ),
  MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'Pequeño tutorial introductorio',
    routeName: AppTutorialScreen.name,
    icon: Icons.accessibility_rounded,
    path: '/tutorial',
    widget: AppTutorialScreen(),
  ),
  MenuItem(
    title: 'Infinite Scroll y pull',
    subTitle: 'Vistas infinitas y pull to refresh',
    routeName: InfiniteScrollScreen.name,
    icon: Icons.list_alt_outlined,
    path: '/infinite',
    widget: InfiniteScrollScreen(),
  ),
  MenuItem(
    title: 'Counter con Riverpod',
    subTitle: 'Contador utilizando gestor de estado riverpod',
    routeName: CounterScreen.name,
    icon: Icons.list,
    path: '/counter',
    widget: CounterScreen(),
  ),
];
