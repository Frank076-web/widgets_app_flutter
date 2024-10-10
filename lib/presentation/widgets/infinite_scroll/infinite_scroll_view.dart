import 'package:flutter/material.dart';

class InfiniteScrollView extends StatefulWidget {
  const InfiniteScrollView({super.key});

  @override
  State<InfiniteScrollView> createState() => _InfiniteScrollViewState();
}

class _InfiniteScrollViewState extends State<InfiniteScrollView> {
  final controller = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  List<int> imagesIds = [1, 2, 3, 4, 5];

  void _addFiveImages() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  Future _loadNextPage() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    _addFiveImages();
    isLoading = false;

    if (!isMounted) return;
    setState(() {});

    _moveScrollToBottom();
  }

  Future<void> _onRefresh() async {
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    if (!isMounted) return;

    isLoading = false;
    final lastId = imagesIds.last;

    imagesIds.clear();
    imagesIds.add(lastId + 1);
    _addFiveImages();

    setState(() {});
  }

  void _moveScrollToBottom() {
    if (controller.position.pixels + 100 <=
        controller.position.maxScrollExtent) {
      return;
    }

    controller.animateTo(
      controller.position.pixels + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.position.pixels >
          controller.position.maxScrollExtent - 100) {
        _loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    isMounted = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: 10,
            strokeWidth: 2,
            onRefresh: _onRefresh,
            child: ListView.builder(
              controller: controller,
              physics: const BouncingScrollPhysics(),
              itemCount: imagesIds.length,
              itemBuilder: (context, index) {
                final imageId = imagesIds[index];

                return FadeInImage(
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder:
                      const AssetImage('assets/Images/jar-loading.gif'),
                  image:
                      NetworkImage('https://picsum.photos/id/$imageId/500/300'),
                );
              },
            ),
          ),
          if (isLoading)
            Positioned(
              left: size.width / 2,
              bottom: 50,
              child: const CircularProgressIndicator(
                strokeWidth: 5,
                backgroundColor: Colors.white,
              ),
            )
        ],
      ),
    );
  }
}
