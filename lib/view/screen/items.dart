import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/controller/itemscontroller.dart';
import 'package:mch/view/widget/customappbar.dart';
import 'package:mch/view/widget/items/listcategoriesitems.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemControllerInp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
                titleappbar: "Find Product",
                onPressedIcon: () {},
                onPressedSearch: () {}),
            const SizedBox(
              height: 20,
            ),
            const ListCategoriesItems(),
          ],
        ),
      ),
    );
  }
}
