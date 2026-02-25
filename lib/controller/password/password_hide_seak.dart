
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordHideSeak extends GetxController{
  TextEditingController password=TextEditingController();
  var isShow=false.obs;
  hide(){
    isShow.value=true;
  }

  seak(){
    isShow.value=false;
  }
}