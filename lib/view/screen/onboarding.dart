import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/view/widget/onboarding/cutombutton.dart';

import '../../controller/onborading_controller.dart';
import '../widget/onboarding/customslider.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoradingControllerInp());
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
          flex: 2,
          child: CustomSlider(),
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomDotController(),
                Spacer(
                  flex: 2,
                ),
                CustomButtonOnboarding()
              ],
            ))
      ],
    )));
  }
}
