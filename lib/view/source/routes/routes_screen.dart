
import 'package:get/get.dart';

class RoutesScreen {
  static String splashScreen='/';
  static String loginScreen='/login_screen';
  static String signUpScreen='/signup_screen';
  static String homeScreen='/home_screen';

  static final routes=[
    GetPage(
        name:splashScreen ,
        page: ()=>splashScreen
    )
  ];


}