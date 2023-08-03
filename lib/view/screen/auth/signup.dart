import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/core/class/handlingdataview.dart';


import '../../../controller/auth/signupcontroller.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/CustomButtomAuth.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtextfrom.dart';
import '../../widget/auth/customtexttitle.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerimp coontroller = Get.put((SignupControllerimp()));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: WillPopScope(
      
      onWillPop:AlertExitApp,
      child:GetBuilder<SignupControllerimp>(
        builder: (controller) =>
        HandlingDataRequest
        (statusRequest:controller.statusRequest!,widget:
           Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                const CustomTextTitle(text: "Welcome Back"),
                const SizedBox(height: 10),
                const CustomTextBody(
                  text:
                      "Sign UP With Your Email And Password OR Continue With Social Media",
                ),
                const SizedBox(height: 10),
                CustomTextfrom(
                  isNumber:false,
                  valid: (val) {
                    return ValidInput(val!, 5, 50, "username");
                  },
                  hinttext: "username",
                  iconData: Icons.person_outlined,
                  labeltext: "Enter Your Username ",
                  mycontroller: coontroller.username,
                ),
                const SizedBox(height: 10),
                CustomTextfrom(
                  isNumber:true,
                  valid: (val) {
                    return ValidInput(val!, 8, 30, "phone");
                  },
                  mycontroller: controller.phone,
                  hinttext: "phone",
                  iconData: Icons.phone_android_outlined,
                  labeltext: "Enter Your Phone",
                ),
                const SizedBox(height: 10),
                CustomTextfrom(
                  isNumber:false,
                  valid: (val) {
                    return ValidInput(val!, 5, 50, "email");
                  },
                  hinttext: "Email",
                  iconData: Icons.email_outlined,
                  labeltext: "Enter your Email",
                  mycontroller: coontroller.email,
                ),
                CustomTextfrom(
                  isNumber:false,
                  valid: (val) {
                    return ValidInput(val!, 5, 50, "password");
                  },
                  hinttext: "Password",
                  iconData: Icons.lock_outlined,
                  labeltext: "Enter your Password",
                  mycontroller: coontroller.password,
                ),
                
                CustomButtomAuth(text: "Sign Up", onPressed: () {
                  controller.signUp();
                }),
                const SizedBox(height: 30),
                 CustomSignUporsignin(
                  textone: " have an account ?",
                  texttwo: "  Sign In ",
                  onTap: () {
                    controller.goToSinIn();
                  },
                )
                
              ]),
            ),
          )
        
      ),
      ))
    );
  }
}
