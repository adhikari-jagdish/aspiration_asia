import 'package:aspirationasia/utils/constants.dart';
import 'package:aspirationasia/utils/default_button.dart';
import 'package:aspirationasia/view/primary.dart';
import 'package:flutter/material.dart';

import 'onBoardingContent.dart';

class OnBoarding extends StatefulWidget {
  static String routeName = "/onBoarding";

  @override
  State<StatefulWidget> createState() => _OnBoarding();
}

class _OnBoarding extends State<OnBoarding> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "title": "Tour",
      "text": "Explore the best holiday destinations for tours!",
      "image": "assets/image/beach-chair.svg"
    },
    {
      "title": "Flight",
      "text": "Domestic or International flight \nwe can provide the best fair",
      "image": "assets/image/flight.svg"
    },
    {
      "title": "Trekking",
      "text":
          "We have the best package options. \nFor Trekking, Expedition, Peak Climbing",
      "image": "assets/image/hiking.svg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                    title: splashData[index]['title'],
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 3),
                      DefaultButton(
                        text: "Continue",
                        press: () {
                          Navigator.pushNamed(context, Primary.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5.0),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}
