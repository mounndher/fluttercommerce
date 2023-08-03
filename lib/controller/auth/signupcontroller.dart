import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mch/core/constant/routes.dart';
import 'package:mch/data/datasource/remote/auth/signup.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroler.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToSinIn();
}

class SignupControllerimp extends SignupController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  List data = [];
  StatusRequest? statusRequest=StatusRequest.none;
  SignUpData signupdata = SignUpData(Get.find());
  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupdata.postdata(
          username.text, password.text, email.text, phone.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(Approutes.verfiyCodesignup,arguments: {
          "email": email.text }
          );
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
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
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }
}
