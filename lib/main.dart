import 'package:aspirationasia/routes/routes.dart';
import 'package:aspirationasia/utils/constants.dart';
import 'package:aspirationasia/view/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Splash.routeName,
    routes: routes,
    theme: ThemeData(
        accentColor: Colors.blueAccent,
        primaryColor: Colors.blue,
        fontFamily: 'Poppins'),
  ));
}
