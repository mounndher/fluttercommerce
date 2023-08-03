import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';


import '../../core/constant/routes.dart';
import '../widget/language/customlanguage.dart';

class Language extends GetView {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("1".tr),
            const SizedBox(height: 20),
            CustomButtomLang(
                textbuttom: "ar",
                onPressed: () {
                  Get.offNamed(Approutes.onBoarding);
                }),
            CustomButtomLang(
                textbuttom: "en",
                onPressed: () {
                  Get.offNamed(Approutes.onBoarding);
                }),
          ],
        ),
      ),
    );
  }
}
