import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://i.ibb.co/DgVZvxM/annapurna-base-camp-nepal.jpg',
  'https://i.ibb.co/Cz1gPDY/chitwan-national-park.jpg',
  'https://i.ibb.co/XF0dghw/maldives-nepal.jpg',
  'https://i.ibb.co/1b9HFBv/swoyambunath-nepal.jpg'
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
