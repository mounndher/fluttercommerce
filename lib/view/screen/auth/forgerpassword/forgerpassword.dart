import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:mch/core/functions/validinput.dart';



import '../../../../controller/forgetpassword/forgetpasswordd.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../widget/auth/CustomButtomAuth.dart';

import '../../../widget/auth/customtextbody.dart';
import '../../../widget/auth/customtextfrom.dart';
import '../../../widget/auth/customtexttitle.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
  
     SControllerimp controlle = Get.put(SControllerimp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Check Email',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        
            
           body: GetBuilder<SControllerimp>(
        builder: (controller) =>
         HandlingDataRequest
        (statusRequest:controller.statusRequest!,widget:
           Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Form(
                key: controlle.formstate,
                child: ListView(children: [
                 
                  const CustomTextTitle(text: "Check Email"),
                  const SizedBox(height: 20),
                  const CustomTextBody(
            text:
                "Please Enter your Email",
          ),
                  const SizedBox(height: 10),
                  CustomTextfrom(
                    isNumber: false,
                    valid: (val) {
                      return ValidInput(val!, 5, 50, "email");
                    },
                    mycontroller: controlle.email,
                    hinttext: "Email",
                    iconData: Icons.email_outlined,
                    labeltext: "Enter your Email",
                  ),
                  
                  
                  CustomButtomAuth(
                      text: "check",
                      onPressed: () {
                        controller.chignUp();
                      }),
                  const SizedBox(height: 40),
                  
                ]),
              ),
            )
            
            )
            )
            );
  }
}

 
