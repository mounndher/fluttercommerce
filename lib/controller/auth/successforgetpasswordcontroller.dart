import 'package:get/get.dart';
import 'package:mch/core/constant/routes.dart';

abstract class SuccessFotgetPasswordController extends GetxController {
  goTologin();
}

class SuccessFotgetPasswordControllerimp
    extends SuccessFotgetPasswordController {
  @override
  goTologin() {
    Get.toNamed(Approutes.login);
  }
}
