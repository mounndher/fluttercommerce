import 'package:get/get.dart';
import 'package:mch/core/class/statusrequest.dart';
import 'package:mch/core/constant/routes.dart';
import 'package:mch/core/functions/handlingdatacontroler.dart';
import 'package:mch/core/services/services.dart';
import 'package:mch/data/datasource/remote/homedata.dart';


abstract class HomeController extends GetxController {
  intialData();
  getData();
  goToItems(List categories,int selectedcat);
}

class HomeControllerInp extends HomeController {
  Myservices myservices = Get.find();
  String? username;
  String? id;
  HomeData homeData = HomeData(Get.find());
  List categories = [];
  List items = [];
  List data = [];

  late StatusRequest statusRequest;
  @override
  intialData() {
    username = myservices.sharedPreferences.getString("username");
    id = myservices.sharedPreferences.getString("id");
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getDataa();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      //data.addAll(response['data']);
      categories.addAll(response['categories']);
      items.addAll(response['items']);
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  goToItems( categories,selectedcat) {
    Get.toNamed(Approutes.items,arguments: {
      "categories":categories,
      "selectedcat":selectedcat,

    });
  }

  @override
  void onInit() {
   
    getData();
    intialData();
    super.onInit();
  }
}
