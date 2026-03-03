
import 'package:get/get.dart';

class Containerclick extends GetxController{
  var selected=(0).obs;
  var loding=false.obs;
   var selectedgrid=(0).obs;
 // var bool=false.obs;
 //  Updateloading(){
 //    loding.value=false;
 //  }
  containercolor(int index)async{
    selected.value=index;
    loding.value = true;
    await Future.delayed(Duration(seconds: 2));
    loding.value = false;
   // bool.value=!bool.value;
  }

  containercolor2(int index){
    selectedgrid.value=index;
  }

}