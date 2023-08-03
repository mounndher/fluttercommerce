import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


import '../../../../controller/forgetpassword/verifycodeecontroller.dart';
import '../../../widget/auth/customtextbody.dart';

import '../../../widget/auth/customtexttitle.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeeControllerimp controller = Get.put(VerifyCodeeControllerimp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Verification Code ',
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
          
          const CustomTextTitle(text: "Check Code"),
          const SizedBox(height: 10),
          const CustomTextBody(
            text:
                "Please Enter The Digit Code Sent To nanou.riache19@gmail.com",
          ),
          const SizedBox(height: 10),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPassword(verificationCode);
            }, // end onSubmit
          ),
        ]),
      ),
    );
  }
}
