import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mch/core/constant/routes.dart';
import 'package:mch/core/middleware/mymiddleware.dart';
//import 'package:mch/test.dart';

import 'package:mch/view/screen/auth/forgerpassword/forgerpassword.dart';
import 'package:mch/view/screen/auth/forgerpassword/resetpassword.dart';

import 'package:mch/view/screen/homescreen.dart';
import 'package:mch/view/screen/auth/login.dart';

import 'package:mch/view/screen/auth/signup.dart';
import 'package:mch/view/screen/auth/forgerpassword/verifycode.dart';
import 'package:mch/view/screen/auth/sucess_signup.dart';
import 'package:mch/view/screen/auth/verifycodesignup.dart';
import 'package:mch/view/screen/items.dart';
import 'package:mch/view/screen/language.dart';

import 'package:mch/view/screen/onboarding.dart';

import 'view/screen/auth/forgerpassword/sucess_restpassword.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
  name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  //=================================auth
  GetPage(name: Approutes.home, page: () => const HomeScreen()),
  GetPage(name: Approutes.login, page: () => const Login()),
  GetPage(name: Approutes.signUp, page: () => const SignUp()),
  GetPage(name: Approutes.successsignup, page: () => const SuccessSignup()),
  GetPage(name: Approutes.successresetPassword, page: () => const SuccessRestPass()),
  GetPage(name: Approutes.verfiyCodesignup, page: () => const VerifyCodeSignUp()),
  GetPage(name: Approutes.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: Approutes.resetPassword, page: () => const ResetPassword()),
  GetPage(name: Approutes.forgetPassword, page: () => const ForgetPassword()),
  //=========================OnBoarding
  GetPage(name: Approutes.onBoarding, page: () => const OnBoarding()),
  // ===============================items
  GetPage(name: Approutes.items, page: () => const Items()),
];
