import 'package:aspirationasia/utils/route_constants.dart';
import 'package:aspirationasia/view/home/home.dart';
import 'package:aspirationasia/view/login/login.dart';
import 'package:aspirationasia/view/onboarding/onboarding.dart';
import 'package:aspirationasia/view/primary.dart';
import 'package:aspirationasia/view/signup/signup.dart';
import 'package:aspirationasia/view/splash.dart';
import 'package:flutter/material.dart';

import 'custom_page_route_builder.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (BuildContext context) => Splash(),
  Primary.routeName: (BuildContext context) => Primary(),
  OnBoarding.routeName: (BuildContext context) => OnBoarding(),
  Login.routeName: (BuildContext context) => Login(),
  Signup.routeName: (BuildContext context) => Signup(),
  RouteConstants.routeHome: (BuildContext context) => Home(),
};

Route<dynamic> generateRoute(RouteSettings settings) {
  if (settings.name == RouteConstants.routeInitial) {
    return CustomPageRouteBuilder(
      widget: Splash(),
    );
  } else if (settings.name == RouteConstants.routeInitial) {
    return CustomPageRouteBuilder(
      widget: Splash(),
    );
  } else if (settings.name == RouteConstants.routeLogin) {
    return CustomPageRouteBuilder(
      widget: Login(),
    );
  } else if (settings.name == RouteConstants.routeHome) {
    return CustomPageRouteBuilder(
      widget: Home(),
    );
  }else {
    return CustomPageRouteBuilder(
      widget: Container(
        child: Text('No Route Found'),
      ),
    );
  }
}
