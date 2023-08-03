import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onborading_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSlider extends GetView<OnBoradingControllerInp> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoradingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  onBoradingList[i].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Image.asset(
                  onBoradingList[i].image!,
                  width: 200,
                  height: 170,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(onBoradingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 4,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
              ],
            ));
  }
}
