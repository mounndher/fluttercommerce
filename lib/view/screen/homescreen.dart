import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/controller/homescreencontroller.dart';
import 'package:mch/view/widget/home/custombottomappbarhome.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              child: const Icon(Icons.shopping_bag_outlined),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const CustomBottomAppBarHome(),
           
            body: controller.listPage.elementAt(controller.currentpage)));
  }
}
 /* BottomAppBar(
                shape: CircularNotchedRectangle(),
                notchMargin: 10,
                child: Row(children: [
                  Row(
                    children: [
                      CustomButtonAppBar(
                          textbutton: 'home',
                          icon: Icons.home,
                          onPressed: () {
                            controller.changePage(0);
                          },active: controller.currentpage==0?true:false),
                          CustomButtonAppBar(
                          textbutton: 'settings',
                          icon: Icons.settings,
                          onPressed: () {
                            controller.changePage(1);
                          },active: controller.currentpage==1?true:false,)
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonAppBar(
                          textbutton: 'favorite',
                          icon: Icons.favorite,
                          onPressed: () {
                            controller.changePage(2);
                          },active: controller.currentpage==2?true:false,),
                          CustomButtonAppBar(
                          textbutton: 'profile',
                          icon: Icons.settings,
                          onPressed: () {
                            controller.changePage(3);
                          },active: controller.currentpage==3?true:false
                          )
                    ],
                  )
                ])),*/