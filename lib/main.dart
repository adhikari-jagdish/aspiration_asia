import 'package:aspirationasia/aspiration_asia_root.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'utils/system_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  SystemUtils().changeSystemBarColor();
  SystemUtils().setOrientation();
  SystemUtils().hideSystemUiOverlay();



  runApp(AspirationAsiaRoot());
}
