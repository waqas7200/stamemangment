import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:statemanagment/controller/auth_controller/Auth_controller.dart';

import '../../routes/routes_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AuthController authController=Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp-Here'),
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
              padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
              child: Center(
                child: TextFormField(
                  controller: authController.namecontroller,
                  decoration: InputDecoration(
                      hintText: 'Name'
                  ),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
              child: Center(
                child: TextFormField(
                  controller: authController.phoneconntroller,
                  decoration: InputDecoration(
                      hintText: 'Phone'
                  ),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 40,right: 40),
              child: Center(
                child: TextFormField(
                  controller: authController.emai,
                  decoration: InputDecoration(
                      hintText: 'Enter Email'
                  ),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
              child: Center(
                child: TextFormField(
                  controller: authController.password,
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                ),),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(child:
              Obx(()=>authController.loading.value?SpinKitCircle(color: Colors.red,):
              ElevatedButton(onPressed: (){
                authController.signup();

              },
                child: Text('SignUp'), ))
                ,),
            ),
   //      ElevatedButton(onPressed: (){
   //        //authController.SignUp();
   // Get.back();
   //      },
   //        child: Text('SignUp'), )

          ],
        ),
      ),
    );
  }
}
