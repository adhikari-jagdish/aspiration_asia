import 'package:aspirationasia/routes/custom_slide_route_builder.dart';
import 'package:aspirationasia/utils/route_constants.dart';
import 'package:aspirationasia/view/home/home.dart';
import 'package:aspirationasia/view/login/login.dart';
import 'package:aspirationasia/view/primary.dart';
import 'package:aspirationasia/view/splash.dart';
import 'package:aspirationasia/view/trip_packages/package_details.dart';
import 'package:aspirationasia/view/trip_packages/package_list.dart';
import 'package:flutter/material.dart';

import 'custom_page_route_builder.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  if (settings.name == RouteConstants.routeInitial) {
    return CustomPageRouteBuilder(
      widget: Splash(),
    );
  } else if (settings.name == RouteConstants.routePackageList) {
    return CustomPageRouteBuilder(
      widget: PackageList(),
    );
  } else if (settings.name == RouteConstants.routeLogin) {
    return CustomSlideRouteBuilder(
      widget: Login(),
    );
  } else if (settings.name == RouteConstants.routeDashboard) {
    return CustomSlideRouteBuilder(
      widget: Primary(),
    );
  } else if (settings.name == RouteConstants.routeHome) {
    return CustomSlideRouteBuilder(
      widget: Home(),
    );
  } else if (settings.name == RouteConstants.routePackageDetails) {
    return CustomSlideRouteBuilder(
      widget: PackageDetails(),
    );
  } else {
    return CustomPageRouteBuilder(
      widget: Container(
        child: Text('No Route Found'),
      ),
    );
  }
}
