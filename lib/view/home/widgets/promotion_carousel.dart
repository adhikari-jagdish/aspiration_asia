import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://i.ibb.co/74B0wy6/img1.jpg',
  'https://i.ibb.co/wSLYB0Q/img2.jpg',
  'https://i.ibb.co/tLCHpky/img3.jpg',
  'https://i.ibb.co/Wp4tL3J/img4.jpg'
];

class PromotionCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child:  CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1.0
        ),
        items: imgList
            .map((item) => Container(
          child: Center(
              child: Image.network(item,
                  fit: BoxFit.cover, width: double.infinity)),
        ))
            .toList(),
      ),
    );
  }
}
