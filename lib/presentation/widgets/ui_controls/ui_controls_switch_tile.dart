import 'package:flutter/material.dart';

class UiControlsSwitchTile extends StatelessWidget {
  final bool isDeveloper;
  final void Function(bool) onChanged;

  const UiControlsSwitchTile(
      {super.key, required this.isDeveloper, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Developer Mode'),
      subtitle: const Text('Controles Adicionales'),
      value: isDeveloper,
      onChanged: onChanged,
    );
  }
}
