import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/core/constant/routes.dart';

import '../core/services/services.dart';
import '../data/datasource/static/static.dart';

abstract class OnBoradingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoradingControllerInp extends OnBoradingController {
  int currentPage = 0;
  late PageController pageController;
  Myservices myservices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage > onBoradingList.length - 1) {
      myservices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(Approutes.login);
    } else {
      pageController.animateToPage(currentPage,
          curve: Curves.easeInOut, duration: const Duration(milliseconds: 900));
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
