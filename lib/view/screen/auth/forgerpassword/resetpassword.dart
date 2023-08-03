import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/controller/forgetpassword/resetpasswordcontroller.dart';


import '../../../widget/auth/CustomButtomAuth.dart';
import '../../../widget/auth/customtextbody.dart';

import '../../../widget/auth/customtextfrom.dart';
import '../../../widget/auth/customtexttitle.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword( {super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put((ResetPasswordControllerImp()));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reset PassWord',
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
        child: ListView(children: [
          const CustomTextTitle(text: "New Password"),
          const SizedBox(height: 10),
          const CustomTextBody(
            text: "please Enter New password",
          ),

          const SizedBox(height: 10),
          CustomTextfrom(
            isNumber: false,
            hinttext: "Password",
            iconData: Icons.lock_outlined,
            labeltext: "Enter your Password",
            mycontroller: controller.password,
          ),
          CustomTextfrom(
            isNumber: false,
            hinttext: "Password",
            iconData: Icons.lock_outlined,
            labeltext: " RE Enter your Password",
            mycontroller: controller.repassword,
          ),
          

          CustomButtomAuth(
              text: "Save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
        ]),
      ),
    );
  }
}
