import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mch/controller/itemscontroller.dart';
import 'package:mch/data/model/categoriesmodel.dart';

class ListCategoriesItems extends StatelessWidget {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    ItemControllerInp controller = Get.put(ItemControllerInp());
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      height: 100,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Categories(
              i: index,
              categoriesmodel:
                  Categoriesmodel.fromJson(controller.categories[index]),
            );
          }),
    );
  }
}

class Categories extends GetView<ItemControllerInp> {
  final Categoriesmodel categoriesmodel;
  final int? i;
  const Categories({super.key, required this.categoriesmodel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeCat(i!);
      },
      child: Column(
        children: [
          GetBuilder<ItemControllerInp>(builder: (controller)=> Container(
              padding: const EdgeInsets.only(right: 10,left: 10,bottom: 5),
              decoration: controller.selectedcat == i
                  ? const BoxDecoration(
                      border: Border(
                          bottom: (BorderSide(width: 3, color: Colors.purple))))
                  : null,
              child: Text(
                '${categoriesmodel.categoriesName}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              )),)
        ],
      ),
    );
  }
}
