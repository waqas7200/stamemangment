
import 'package:get/get.dart';

import '../authScreens/loginScreen/login_screen.dart';
import '../authScreens/signUP_Screen/SignUP_screen.dart';
import '../home_screen/home_screen.dart';
import '../spalshScreen/Splash_screen.dart';

class AppsRoutes {
  static String splashScreen='/';
  static String loginScreen='/login_screen';
  static String signUpScreen='/signup_screen';
  static String homeScreen='/home_screen';

  static final routes=[

    GetPage(
        name:splashScreen ,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name:loginScreen ,
        page: ()=>LoginScreen()
    ),
    GetPage(
        name:signUpScreen ,
        page: ()=>SignUpScreen()
    ),
    GetPage(
        name:homeScreen ,
        page: ()=>HomeScreen()
    ),
  ];


}