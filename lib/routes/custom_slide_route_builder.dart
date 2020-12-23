import 'package:flutter/material.dart';

class CustomSlideRouteBuilder extends PageRouteBuilder {
  final Widget widget;

  CustomSlideRouteBuilder({this.widget})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    widget,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
        );
}
