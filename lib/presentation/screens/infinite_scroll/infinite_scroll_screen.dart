import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class InfiniteScrollScreen extends StatelessWidget {
  static const name = 'infinite_scroll_screen';

  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('InfiniteScroll'),
        // ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.black,
        body: const InfiniteScrollView()
    );
  }
}
