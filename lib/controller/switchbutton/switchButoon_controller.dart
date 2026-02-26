

import 'package:get/get.dart';

class SwitchbutoonController extends GetxController {
  var isbool=false.obs;
  switchFunction (value){
  isbool.value=value;
  }

}