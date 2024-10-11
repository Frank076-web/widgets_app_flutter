import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      drawer: HomeDrawer(
        scaffoldKey: scaffoldKey,
      ),
      body: const HomeView(),
    );
  }
}
