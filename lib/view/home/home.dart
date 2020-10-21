import 'package:aspirationasia/utils/integers.dart';
import 'package:aspirationasia/utils/strings.dart';
import 'package:aspirationasia/view/home/widgets/popular_destinations.dart';
import 'package:aspirationasia/view/home/widgets/services.dart';
import 'package:flutter/material.dart';

import 'file:///E:/Projects/AspirationAsia/aspiration_asia/lib/view/home/widgets/promotion_carousel.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Integers.SIZE_TWENTY),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Jagdish 🙏 Good Afternoon!',
                  style: TextStyle(fontSize: Integers.SIZE_SIXTEEN),
                ),
                SizedBox(
                  height: Integers.SIZE_TEN,
                ),
                PromotionCards(),
                SizedBox(
                  height: Integers.SIZE_SIXTEEN,
                ),
                Text(
                  'Our Services',
                  style: TextStyle(fontSize: Integers.SIZE_SIXTEEN),
                ),
                SizedBox(
                  height: Integers.SIZE_TEN,
                ),
                Services(),
                SizedBox(
                  height: Integers.SIZE_TWENTY,
                ),
                Text(
                  'Popular Destinations',
                  style: TextStyle(fontSize: Integers.SIZE_SIXTEEN),
                ),
                SizedBox(
                  height: Integers.SIZE_TEN,
                ),
                PopularDestinations(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
