import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/controller/homecontroller.dart';
import 'package:mch/data/model/itemsmodel.dart';
import 'package:mch/linkapi.dart';

class ListItemsHome extends GetView<HomeControllerInp> {
  const ListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 160,
      child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, i) {
            return Items(itemsModel: ItemsModel.fromJson(controller.items[i]),);
          })),
    );
  }
}
class Items extends StatelessWidget {
  const Items({super.key, required this.itemsModel});
  final ItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Image.network(
                    "${AppLink.imageitems}/${itemsModel.itemsImage}",
                    height: 100,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.3)),
                  height: 120,
                  width: 190,
                ),
                Positioned(
                    left: 10,
                    child: Text(
                      "${itemsModel.itemsName}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ))
              ],
            );
  }
}