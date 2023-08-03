import 'package:get/get.dart';
import 'package:mch/core/class/crud.dart';

class InitialBindigns extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
