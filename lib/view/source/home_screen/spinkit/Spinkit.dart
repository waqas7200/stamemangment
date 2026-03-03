import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:statemanagment/controller/spinkit_controller.dart';
class Spinkit extends StatelessWidget {
  const Spinkit({super.key});

  @override
  Widget build(BuildContext context) {
    SpinkitController spinkitController=Get.put(SpinkitController());
    return Scaffold(
        body:
       Stack(children: [
         Obx(()=> spinkitController.isLoading.value?
         Container(
           height: double.infinity,
           width: double.infinity,
           color: Colors.black45,
           child:  SpinKitCircle(color: Colors.black,),
         )
             :SizedBox(),),
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Center(
                 child: Text('my name is waqas khan \n i am a flutter developer',
                   style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold,fontSize: 30),),
               ),
             ),
             Padding(
                 padding: const EdgeInsets.only(top: 200),
                 child:  ElevatedButton(onPressed: (){
                   spinkitController.showloading();
                 },
                   child:  Text('loading',
                     style: GoogleFonts.aBeeZee
                       (fontWeight: FontWeight.bold,fontSize: 15),),)
             ),

           ],
         )
       ],)
    );
  }
}
