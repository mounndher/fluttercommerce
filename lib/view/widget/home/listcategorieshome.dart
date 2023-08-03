import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mch/controller/homecontroller.dart';
import 'package:mch/data/model/categoriesmodel.dart';
import 'package:mch/linkapi.dart';
import 'package:flutter_svg/svg.dart';

class ListCategoriesHome extends StatelessWidget {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerInp controller = Get.put(HomeControllerInp());
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      height: 100,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Categories(
              categoriesmodel: Categoriesmodel.fromJson(controller.categories[index]),);
          }),
    );
  }
}

class Categories extends StatelessWidget {
  final Categoriesmodel categoriesmodel;
  const Categories({super.key, required this.categoriesmodel});

  @override
  Widget build(BuildContext context) {
    return Column(
                        
                        children: [
                          
                          Container(
                            
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromARGB(255, 239, 201, 246)),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 70,
                            width: 70,
                            child: SvgPicture.network(
                                "${AppLink.imagecategories}/${categoriesmodel.categoriesImage}"),
                          ),
                          Text(
                            '${categoriesmodel.categoriesName}',
                            style: const TextStyle(
                                fontSize: 13, color: Colors.black),
                          )
                        ],
                      );
  }
}
