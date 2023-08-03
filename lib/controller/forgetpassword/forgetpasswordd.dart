import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mch/core/constant/routes.dart';

import 'package:mch/data/datasource/remote/forgetpassword/checkemail.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroler.dart';

abstract class SController extends GetxController {
  chignUp();
  goToSinIn();
}

class SControllerimp extends SController {
  late TextEditingController email;
  
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  List data = [];
  StatusRequest? statusRequest=StatusRequest.none;
  CheckEmailData checkEmailData  = CheckEmailData(Get.find()) ; 
  @override
  chignUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postdata(
           email.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(Approutes.verfiyCode,arguments: {
          "email": email.text }
          );
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "  Email Not Found");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSinIn() {
    Get.toNamed(Approutes.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    
    super.onInit();
  }

  void dispose() {
    email.dispose();
    
    super.dispose();
  }
}
