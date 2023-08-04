import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mch/view/screen/home.dart';


abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const Home(),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Settings"))],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Profile"))],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Favorite"))],
    )
  ];
  List  titlebottomappbar = [
    "home" , 
    "settings" , 
    "profile" , 
    "favorite"
  ] ; 
  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
