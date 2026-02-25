import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:statemanagment/controller/count_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CountController countController=Get.put(CountController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Count App', style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 200,),
     Obx(()=>   Text("${countController.count.value}",
         style: GoogleFonts.poppins(
       fontSize: 25,
       fontWeight: FontWeight.bold,
       //color: Colors.black,
     )),),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                countController.increment();
              },

              child:Text('Count', style: GoogleFonts.poppins(
                //fontSize: 15,
                fontWeight: FontWeight.bold,
                //color: Colors.black,
              ),
            )

              ,),


            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                countController.decrement();
              },

              child:Text('Remove', style: GoogleFonts.poppins(
                //fontSize: 15,
                fontWeight: FontWeight.bold,
                //color: Colors.black,
              ),
              )

              ,),


            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                countController.Zero();
              },

              child:Text('Zero', style: GoogleFonts.poppins(
                //fontSize: 15,
                fontWeight: FontWeight.bold,
                //color: Colors.black,
              ),
              )

              ,)
            ]
        ),
      )
    );
  }
}
