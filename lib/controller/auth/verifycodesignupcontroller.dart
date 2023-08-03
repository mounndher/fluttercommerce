import 'package:get/get.dart';
import 'package:mch/core/constant/routes.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroler.dart';
import '../../data/datasource/remote/auth/verifycodesignup.dart';

abstract class VerifyCodeSignupController extends GetxController {
  chekcode();
  goToSuccessSignUp(String verifycodesignup);
}

class VerifyCodeSignupControlleimp extends VerifyCodeSignupController {
 

  String? email;
  StatusRequest? statusRequest=StatusRequest.none;
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  @override
  chekcode() {}

  @override
  goToSuccessSignUp( verifycodesignup) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUpData.postdata(email!, verifycodesignup); 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") { 
         Get.offNamed(Approutes.successsignup);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
      
      
  }


  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
