import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/switchbutton/switchButoon_controller.dart';

class Switchbutton extends StatelessWidget {
  const Switchbutton({super.key});

  @override
  Widget build(BuildContext context) {
    SwitchbutoonController switchbutoonController=Get.put(SwitchbutoonController());
    return Scaffold(
      body: Center(child: Obx(()=>Switch(value: switchbutoonController.isbool.value,
          onChanged:switchbutoonController.switchFunction
          )),),
    );
  }
}


