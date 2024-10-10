import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/config.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    ...appMenuItems.map((menu) => GoRoute(
          path: menu.path,
          name: menu.routeName,
          builder: (context, state) => menu.widget,
        )),
  ],
);
