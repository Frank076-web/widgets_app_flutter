import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ui Controls'),
        ),
        body: const UiControlsView()
    );
  }
}
