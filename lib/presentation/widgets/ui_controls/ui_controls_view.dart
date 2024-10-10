import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

enum Transportation {
  car,
  plane,
  boat,
  submarine,
}

class UiControlsView extends StatefulWidget {
  const UiControlsView({super.key});

  @override
  State<UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<UiControlsView> {
  bool isDeveloper = true;
  Transportation groupValue = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        UiControlsSwitchTile(
          isDeveloper: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = value;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$groupValue'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar por auto'),
              value: Transportation.car,
              groupValue: groupValue,
              onChanged: (value) => setState(() {
                groupValue = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation.boat,
              groupValue: groupValue,
              onChanged: (value) => setState(() {
                groupValue = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar en avión'),
              value: Transportation.plane,
              groupValue: groupValue,
              onChanged: (value) => setState(() {
                groupValue = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: groupValue,
              onChanged: (value) => setState(() {
                groupValue = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
