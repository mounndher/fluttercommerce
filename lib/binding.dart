import 'package:get/get.dart';
import 'package:mch/core/class/crud.dart';



class MyBinding extends Bindings {
  @override
  void dependencies() {
   // Get.lazyPut(() => SignupControllerimp(), fenix: true);
    Get.put(Crud());
  }
}
