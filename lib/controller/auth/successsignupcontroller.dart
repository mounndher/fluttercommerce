import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mch/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
 
  goTologin();
}

class SuccessSignUpControllerimp extends SuccessSignUpController {
  late TextEditingController email;
  
 

  @override
  goTologin() {
    Get.toNamed(Approutes.login);
  }

  @override
  void onInit() {
    //email = TextEditingController();
   
    super.onInit();
  }

  void dispose() {
    //email.dispose();
    
    super.dispose();
  }
}
