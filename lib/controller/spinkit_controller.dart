import 'package:get/get.dart';

class SpinkitController extends GetxController
{
  var isLoading=false.obs;

showloading()
{
  isLoading.value=! isLoading.value;
}
// hideloading()
// {
//   isLoading.value=false;
// }

}