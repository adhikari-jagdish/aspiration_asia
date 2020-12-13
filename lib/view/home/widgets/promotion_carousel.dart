import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromotionCards extends StatelessWidget {
  CarouselResponse carouselResponse;

  PromotionCards({@required this.carouselResponse});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: CarouselSlider(
        options: CarouselOptions(autoPlay: true, viewportFraction: 1.0),
        items: carouselResponse.data
            .map((item) => Container(
                  child: Center(
                      child: Image.network(item.imageUrl,
                          fit: BoxFit.cover, width: double.infinity)),
                ))
            .toList(),
      ),
    );
  }
}
