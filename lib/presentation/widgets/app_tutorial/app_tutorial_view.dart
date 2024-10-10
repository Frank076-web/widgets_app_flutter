import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title,
    this.caption,
    this.imageUrl,
  );
}

final List<SlideInfo> slides = [
  SlideInfo(
      'Busca la comida',
      'Esse elit officia minim nulla veniam aliqua dolore.',
      'assets/Images/1.png'),
  SlideInfo(
      'Entrega rápida',
      'Sit qui aute pariatur dolor nostrud qui excepteur aliqua.',
      'assets/Images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Sunt commodo in voluptate do do ad duis non aliquip nisi ad.',
      'assets/Images/3.png'),
];

class AppTutorialView extends StatefulWidget {
  const AppTutorialView({super.key});

  @override
  State<AppTutorialView> createState() => _AppTutorialViewState();
}

class _AppTutorialViewState extends State<AppTutorialView> {
  final PageController controller = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      final page = controller.page ?? 0;

      if (!endReached && page >= (slides.length - 1)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          physics: const BouncingScrollPhysics(),
          controller: controller,
          children: slides
              .map((info) => _Slide(
                    title: info.title,
                    caption: info.caption,
                    imageUrl: info.imageUrl,
                  ))
              .toList(),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Skip'),
          ),
        ),
        if (endReached)
          Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(milliseconds: 500),
              child: FilledButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Comenzar'),
              ),
            ),
          )
      ],
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStile = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(title, style: titleStile),
            const SizedBox(height: 10),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
