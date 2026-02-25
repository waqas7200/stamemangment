import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:statemanagment/controller/password/password_hide_seak.dart';

class HideAndSeak extends StatelessWidget {
  const HideAndSeak({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordHideSeak passwordHideSeak=Get.put(PasswordHideSeak());
    return Scaffold(
      body:
    Obx(()=>  Center(child:
  TextFormField(
    controller: passwordHideSeak.password,
    obscureText: passwordHideSeak.isShow.value,
    decoration: InputDecoration(
      suffixIcon: passwordHideSeak.isShow.value?
   IconButton(onPressed: (){
            passwordHideSeak.isShow.value=false;
      },
          icon: Icon(Icons.visibility_off))
          :IconButton(onPressed: (){
        passwordHideSeak.isShow.value=true;
      },
          icon: Icon(Icons.visibility))
    ),
  )
      ,),)
    );
  }
}
