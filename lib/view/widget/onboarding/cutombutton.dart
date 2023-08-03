import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onborading_controller.dart';

class CustomButtonOnboarding extends GetView<OnBoradingControllerInp> {
  const CustomButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 90),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        onPressed: () {
          controller.next();
        },
        child: const Text('Continue'),
        color: Colors.deepPurple,
      ),
    );
  }
}
