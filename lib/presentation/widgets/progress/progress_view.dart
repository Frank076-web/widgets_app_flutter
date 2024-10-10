import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Circular Progress Indicator'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Circular y Linear Indicator Controlado'),
          SizedBox(
            height: 10,
          ),
          ControllerProgressIndicator()
        ],
      ),
    );
  }
}
