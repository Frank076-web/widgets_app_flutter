import 'package:flutter/material.dart';

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          spacing: 15,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text('Filled Icon'),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal),
              label: const Text('Outlined Icon'),
            ),
            TextButton(onPressed: () {}, child: const Text('Text button')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_box),
              label: const Text('Text Icon'),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_alarm_sharp)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_alarm_sharp),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
              ),
            ),
            const _CustomButton()
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: colors.primary,
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:
                  Text('Custom Button', style: TextStyle(color: Colors.white)),
            ),
          ),
        ));
  }
}
