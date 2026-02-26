
import 'package:get/get.dart';

class Containerclick extends GetxController{
  var selected=(0).obs;
   var selectedgrid=(0).obs;
 // var bool=false.obs;
  containercolor(int index){
    selected.value=index;
   // bool.value=!bool.value;
  }

  containercolor2(int index){
    selectedgrid.value=index;
  }

}