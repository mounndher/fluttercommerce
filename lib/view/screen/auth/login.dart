import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/controller/auth/logincontroller.dart';
import 'package:mch/core/class/handlingdataview.dart';

import 'package:mch/core/functions/validinput.dart';

import '../../../core/functions/alertexitapp.dart';
import '../../widget/auth/CustomButtomAuth.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtextfrom.dart';
import '../../widget/auth/customtexttitle.dart';
import '../../widget/auth/logo.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerimp controller = Get.put(LoginControllerimp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: WillPopScope(
            onWillPop: AlertExitApp,
            child: GetBuilder<LoginControllerimp>(
        builder: (controller) =>HandlingDataRequest
        (statusRequest:controller.statusRequest!,widget:
        
        
           Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Form(
                key: controller.formstate,
                child: ListView(children: [
                  const Logo(),
                  const CustomTextTitle(text: "Welcome Back"),
                  const SizedBox(height: 10),
                  const CustomTextBody(
                    text:
                        "Sign In With Your Email And Password OR Continue With Social Media",
                  ),
                  const SizedBox(height: 10),
                  CustomTextfrom(
                    isNumber: false,
                    valid: (val) {
                      return ValidInput(val!, 5, 50, "email");
                    },
                    mycontroller: controller.email,
                    hinttext: "Email",
                    iconData: Icons.email_outlined,
                    labeltext: "Enter your Email",
                  ),
                  GetBuilder<LoginControllerimp>(builder: (controller)=>CustomTextfrom(
                    obscureText: controller.isshowpassword,
                    onTapicon: () {
                      controller.showpassword();
                    },
                    isNumber: false,
                    valid: (val) {
                      return ValidInput(val!, 5, 50, "password");
                    },
                    mycontroller: controller.password,
                    hinttext: "Password",
                    iconData: Icons.lock_outlined,
                    labeltext: "Enter your Password",
                  ),),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: const Text(
                      "Forget Password",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  CustomButtomAuth(
                      text: "Sign In",
                      onPressed: () {
                        controller.login();
                      }),
                  const SizedBox(height: 40),
                  CustomSignUporsignin(
                    textone: " Don't have an account ? ",
                    texttwo: " Sign Up ",
                    onTap: () {
                      controller.goToSinUp();
                    },
                  )
                ]),
              ),
            )
            
            )
            ))
            );
  }
}
