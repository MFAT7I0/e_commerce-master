import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BuildSlider extends StatelessWidget {
  final String image;

  const BuildSlider({super.key, required this.image});



  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: 1,
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          height: 220,
        ),
        itemBuilder: (BuildContext context, int itemIndex,
            int pageViewIndex) =>
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                child: Image.asset(image),
              ),
            ),
      ),
    );
  }
}


