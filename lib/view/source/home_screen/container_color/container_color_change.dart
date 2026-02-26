import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../controller/containerClickchangecolor/ContainerClick.dart';

class ContainerColorChange extends StatelessWidget {
   ContainerColorChange({super.key});

  List  GridIcons=[
  Icons.rotate_90_degrees_cw_outlined,
    Icons.monitor,
    Icons.light_outlined,
    Icons.temple_hindu_outlined,
    Icons.coronavirus,
    Icons.playlist_play_outlined,
  ];
  List  GridText=[
    'Temperature',
    'SmartTV',
    'Lamps',
    'Hoover',
    'Air Conditioner',
    'Media',
  ];
  @override
  Widget build(BuildContext context) {
    Containerclick containerclick=Get.put(Containerclick());
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms',style: GoogleFonts.aBeeZee(fontSize: 30,
            fontWeight: FontWeight.bold,color: Colors.indigo),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,color: Colors.indigo,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            //30c text
            Center(
              child: Text('30 C',style: GoogleFonts.poppins(fontSize: 40,
                  fontWeight: FontWeight.bold,color: Colors.indigo),),
            ),
            SizedBox(height: 0,),
            //temeperature  text
            Center(
              child: Text('Temperature',style: GoogleFonts.poppins(fontSize: 25,
                  fontWeight: FontWeight.w400,color: Colors.black),),
            ),
            //divider
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Divider(),
            ),
            //containers in row  of on media and internet
            Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child:    Column(
                        children: [
                          Obx(()=> InkWell(
                            onTap:(){
                              containerclick.containercolor(1);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: containerclick.selected.value==1?Colors.indigo
                                      :Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 0.2)
                              ),child: Center(child: Icon(Icons.lightbulb_outline,
                              size: 30,color:containerclick.selected.value==1?Colors.white
                                  :Colors.indigo,
                            ),),
                            ),
                          ),),
                          Text('On',style: GoogleFonts.poppins(fontSize: 18,
                              fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child:    Column(
                        children: [
                          Obx(()=> InkWell(
                            onTap:(){
                              containerclick.containercolor(2);
                            },
                            child:  Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: containerclick.selected.value==2?Colors.indigo
                                      :Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20)
                              ),child: Center(child: Icon(Icons.playlist_play_outlined,
                              size: 30,
                              color: containerclick.selected.value==2?Colors.white
                                  :Colors.indigo,
                            ),),
                            ),
                          ),),

                          Text('Media',style: GoogleFonts.poppins(fontSize: 16,
                              fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child:      Column(
                        children: [
                          Obx(()=> InkWell(
                            onTap:(){
                              containerclick.containercolor(3);
                            },
                            child:    Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(

                                  color: containerclick.selected.value==3?Colors.indigo
                                      :Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20)
                              ),child: Center(child: Icon(Icons.wifi,
                              size: 30,
                              color: containerclick.selected.value==3?Colors.white
                                  :Colors.indigo,
                            ),),
                            ),
                          ),),

                          Text('Internet',style: GoogleFonts.poppins(fontSize: 15,
                              fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                    ),

                  ],)
            ),

            //GridView and container
            SizedBox(
              height:550,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                      (
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,crossAxisSpacing: 10
                    ),
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          containerclick.containercolor2(index);
                        },
                        child:Obx(()=> Container(
                          height: 0,
                          width: 70,
                          decoration: BoxDecoration(
                              color: containerclick.selectedgrid.value==index?Colors.indigo
                                  :Colors.grey.shade300,
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(50)
                          ),child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Center(
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(child:
                                Icon(GridIcons[index],size: 60,
                                  color: containerclick.selectedgrid.value==index?Colors.white
                                    :Colors.indigo,),),
                                  Text(  GridText[index],style: GoogleFonts.aBeeZee(fontSize: 12,
                                      fontWeight: FontWeight.bold, color: containerclick.selectedgrid.value==index?Colors.white
                                          :Colors.indigo ),),

                                ],
                              ),
                            ),
                          ),
                        ),)
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
