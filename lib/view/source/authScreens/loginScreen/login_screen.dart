import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:statemanagment/controller/auth_controller/Auth_controller.dart';

import '../../routes/routes_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AuthController authController=Get.put(AuthController());
    return Scaffold(
    appBar: AppBar(
    title: Text('Login-Screen'),
    centerTitle: true,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100,left: 40,right: 40),
              child: Center(
                child: Text('Wellcome Back',style: GoogleFonts.aBeeZee(fontSize: 30,
                    fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 40,right: 40),
              child: Center(
                child: TextFormField(
                  controller: authController.emailcontroller,
                decoration: InputDecoration(
                hintText: 'Enter Email'
                ),
                ),),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
              child: Center(
                child: TextFormField(
                  controller: authController.passwordcontroller,
                  decoration: InputDecoration(
                      hintText: 'Password'
                      ),
                ),),
              ),
        
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(child:
              Obx(()=>authController.isloading.value?SpinKitCircle(color: Colors.red,):
              ElevatedButton(onPressed: (){
                authController.Login();
        
              },
                child: Text('Login'), ))
                ,),
            ),
            Row(
              children: [
              Text('Already Have an Account?',style: TextStyle(color: Colors.black),),
              Center(child:
              Obx(()=>authController.isloading.value?SpinKitCircle(
                color: Colors.red,):
                          TextButton(onPressed: (){
                            Get.toNamed(AppsRoutes.signUpScreen);
                          }, child:
                          Text('SignUP',style: TextStyle(color: Colors.red),),)
                ,),
                            )
            ],),


          ],
        ),
      ),
    );
  }
}
