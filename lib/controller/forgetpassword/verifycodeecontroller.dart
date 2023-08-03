import 'package:get/get.dart';
import 'package:mch/core/class/statusrequest.dart';
import 'package:mch/core/constant/routes.dart';
import 'package:mch/core/functions/handlingdatacontroler.dart';
import 'package:mch/data/datasource/remote/forgetpassword/verifycode.dart';

abstract class VerifyCodeeController extends GetxController {
  chekcode();
  goToResetPassword(String verifycode);
}

class VerifyCodeeControllerimp extends VerifyCodeeController {
  String? email;
  StatusRequest? statusRequest =StatusRequest.none;
  VerfycodeForgetpasswordData verfycodeForgetpasswordData =
      VerfycodeForgetpasswordData(Get.find());
  @override
  chekcode() {}
  @override
  goToResetPassword( verifycode) async {
    print('aaa');
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verfycodeForgetpasswordData.postdata(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      print("nnnnnnnnnn");
      if (response['status'] == "success") {
        Get.offNamed(Approutes.resetPassword, arguments: {"email": email});
      } else {
        print("yes");
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
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
