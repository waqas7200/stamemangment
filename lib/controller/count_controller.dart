import 'package:get/get.dart';

class CountController extends GetxController{
  var count=0.obs;
  increment(){
    count.value++;
  }

  decrement(){
    if(count.value>0){
      count.value--;
    }
  }

  Zero(){
    count.value=0;
  }
}