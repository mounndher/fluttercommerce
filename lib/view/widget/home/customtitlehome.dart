import 'package:flutter/material.dart';

class CustomTilteHome extends StatelessWidget {
  final String title;
  const CustomTilteHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child:  Text(
        //'',
        title,
        style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
