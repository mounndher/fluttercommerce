import 'package:get/get.dart';

abstract class ItemController extends GetxController {
  intialData();
  changeCat(int val);
}

class ItemControllerInp extends ItemController {
  List categories = [];
  int? selectedcat;
  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedcat = Get.arguments['selectedcat'];
  }

  @override
  changeCat(val) {
    selectedcat = val;
    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
