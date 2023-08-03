import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mch/core/functions/handlingdatacontroler.dart';

import '../core/class/statusrequest.dart';
import '../data/datasource/remote/test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getDataa(); 
    print("=============================== Controller $response ") ; 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
