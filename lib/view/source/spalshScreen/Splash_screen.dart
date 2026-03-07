import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagment/view/source/routes/routes_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Spalsh_screen'),
        centerTitle: true,
      ),
      body: Center(child: 
        ElevatedButton(onPressed: (){
       Get.offNamed(AppsRoutes.loginScreen);
        }, child: Text('Spalsh_screen'), )
        ,),
    );
  }
}
