import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:mch/core/class/handlingdataview.dart';




import '../../../controller/auth/verifycodesignupcontroller.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtexttitle.dart';



class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
   
    Get.put(VerifyCodeSignupControlleimp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey)),
      ),
      body: GetBuilder<VerifyCodeSignupControlleimp>(
          builder: (controller) =>  HandlingDataRequest
        (statusRequest:controller.statusRequest!,widget:
              
          Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    const CustomTextTitle(text: "Check code"),
                    const SizedBox(height: 10),
                    const CustomTextBody(
                        text:
                            "Please Enter The Digit Code Sent To!email"),
                    const SizedBox(height: 15),
                    OtpTextField(
                      fieldWidth: 50.0,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      borderColor: const Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.goToSuccessSignUp(verificationCode);
                      }, // end onSubmit
                    ),
                    const SizedBox(height: 40),
                  ]),
                )),
      )
    );
  }
}
