import 'package:flutter/material.dart';

class SnackbarView extends StatelessWidget {
  const SnackbarView({super.key});

  void _openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
            'Ex magna et enim minim laborum sit tempor enim sit mollit adipisicing proident reprehenderit. Excepteur sit dolor magna ut qui sint. Proident fugiat dolore tempor Lorem tempor Lorem sit nulla. Ad sint non nisi proident eiusmod nostrud proident in irure sint. Et sit Lorem excepteur nulla quis. Proident nulla ad nulla ullamco Lorem ad aliqua exercitation. Anim est minim consectetur ullamco.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(
                context: context,
                children: [
                  const Text(
                      'Consectetur excepteur magna quis excepteur nisi officia non irure elit nostrud commodo eiusmod nostrud culpa. Quis velit id laboris id magna magna. Nulla consequat non irure laboris ea incididunt do mollit velit exercitation esse ea.'),
                ],
              );
            },
            child: const Text('Licencias Usadas'),
          ),
          FilledButton.tonal(
            onPressed: () => _openDialog(context),
            child: const Text('Mostrar diálogo'),
          ),
        ],
      ),
    );
  }
}
