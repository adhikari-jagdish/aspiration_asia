import 'package:aspirationasia/view/onboarding/onboarding.dart';
import 'package:aspirationasia/view/primary.dart';
import 'package:aspirationasia/view/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (BuildContext context) => Splash(),
  Primary.routeName: (BuildContext context) => Primary(),
  OnBoarding.routeName: (BuildContext context) => OnBoarding()
};
