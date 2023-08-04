import 'package:flutter/material.dart';
import 'package:mch/view/widget/customappbar.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar( titleappbar: "Find Product",
                            onPressedIcon: () {},
                            onPressedSearch: () {})
        ],),
      ),
    );
  }
}