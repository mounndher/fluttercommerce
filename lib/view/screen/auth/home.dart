import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mch/controller/homecontroller.dart';
import 'package:mch/core/class/handlingdataview.dart';

import 'package:mch/view/widget/home/customcardhome.dart';
import 'package:mch/view/widget/home/customtitlehome.dart';

import '../../widget/home/customappbar.dart';
import '../../widget/home/listcategorieshome.dart';
import '../../widget/home/listitemshome.dart';

class Home extends GetView<HomeControllerInp> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(HomeControllerInp());
    return Scaffold(
      body: GetBuilder<HomeControllerInp>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: ListView(
                    children: [
                      CustomAppBar(
                          titleappbar: "Find Product",
                          onPressedIcon: () {},
                          onPressedSearch: () {}),
                      const CustomCardHome(
                          title: "A summer surprise", body: "Cashback 20%"),
                          const ListCategoriesHome(),
                      const SizedBox(height: 10),
                      const CustomTilteHome(title: "Product for you"),
                      const SizedBox(height: 10),
                      const ListItemsHome(), 
                      const CustomTilteHome(title: "Offer"),
                      const SizedBox(height: 10),
                      const ListItemsHome()
                    ]
                    
                     
                ))),)
    );
  }
}
