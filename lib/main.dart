import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:statemanagment/view/source/home_screen/container_color/container_color_change.dart';
import 'package:statemanagment/view/source/home_screen/home_screen.dart';
import 'package:statemanagment/view/source/home_screen/password/hide_and_seak.dart';
import 'package:statemanagment/view/source/home_screen/spinkit/Spinkit.dart';
import 'package:statemanagment/view/source/home_screen/switchButton.dart';
import 'package:statemanagment/view/source/routes/routes_screen.dart';

import 'firebase_options.dart';

void main()async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo.shade600,
          foregroundColor:  Colors.white,
        )
      )
    ),
  initialRoute: AppsRoutes.splashScreen,
    getPages:AppsRoutes.routes
    //Spinkit()
    //ContainerColorChange()
    //Spinkit()
     //Switchbutton()
    //HideAndSeak()
    //HomeScreen()
    );
  }
}
