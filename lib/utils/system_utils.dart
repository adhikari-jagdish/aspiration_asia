import 'package:aspirationasia/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SystemUtils {
  void changeSystemBarColor({Color color}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color ?? kPrimaryColor,
    ));
  }

  void setOrientation({List<DeviceOrientation> deviceOrientationList}) {
    SystemChrome.setPreferredOrientations(deviceOrientationList ??
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
  }

  void hideSystemUiOverlay() {
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  void showSystemUiOverlay({List<SystemUiOverlay> systemUiOverlayList}) {
    SystemChrome.setEnabledSystemUIOverlays(
      systemUiOverlayList ??
          [
            SystemUiOverlay.bottom,
            SystemUiOverlay.top,
          ],
    );
  }
}
