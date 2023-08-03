import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../controller/auth/successforgetpasswordcontroller.dart';
import '../../../widget/auth/CustomButtomAuth.dart';

class SuccessRestPass extends StatelessWidget {
  const SuccessRestPass({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessFotgetPasswordControllerimp controller =
        Get.put(SuccessFotgetPasswordControllerimp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Success',
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: Colors.purple,
            )),
            const Text('.....'),
            const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                  text: "Go To Login",
                  onPressed: () {
                    controller.goTologin();
                  }),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
