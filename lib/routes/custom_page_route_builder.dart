import 'package:flutter/material.dart';

class CustomPageRouteBuilder extends PageRouteBuilder {
  final Widget widget;
  CustomPageRouteBuilder({this.widget})
      : super(
    transitionDuration: Duration(seconds: 1),
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.bottomCenter,
        scale: animation,
        child: child,
      );
    },
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secAnimation,
        ) {
      return widget;
    },
  );
}
