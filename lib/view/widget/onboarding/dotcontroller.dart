import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onborading_controller.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoradingControllerInp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoradingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 9),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage==index ?20:5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}
