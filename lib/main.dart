import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:statemanagment/view/source/home_screen/home_screen.dart';
import 'package:statemanagment/view/source/home_screen/password/hide_and_seak.dart';

void main() {
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
    home: HideAndSeak()
    //HomeScreen()
    );
  }
}
