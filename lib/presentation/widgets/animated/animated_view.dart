import 'package:flutter/material.dart';

class AnimatedView extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;

  const AnimatedView({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        width: width <= 0 ? 0 : width,
        height: height <= 0 ? 0 : height,
        duration: const Duration(milliseconds: 400),
        curve: Curves.elasticOut,
        decoration: BoxDecoration(
          color: color,
          borderRadius:
              BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius),
        ),
      ),
    );
  }
}
