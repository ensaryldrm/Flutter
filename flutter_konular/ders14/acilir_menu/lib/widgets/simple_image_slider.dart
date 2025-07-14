import 'package:flutter/material.dart';

class SimpleImageSlider extends StatefulWidget {
  const SimpleImageSlider({super.key});

  @override
  State<SimpleImageSlider> createState() => _SimpleImageSliderState();
}

class _SimpleImageSliderState extends State<SimpleImageSlider> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  final List<String> imageURLs = [
    "https://picsum.photos/id/1050/800/400",
    "https://picsum.photos/id/1051/800/400",
    "https://picsum.photos/id/1052/800/400",
    "https://picsum.photos/id/1053/800/400",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        // GÖRSEL SLIDER
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageURLs[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(imageURLs.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index ? Colors.blue : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
