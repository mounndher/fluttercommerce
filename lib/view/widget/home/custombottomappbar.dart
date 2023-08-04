import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonAppBar extends StatelessWidget {
  final String textbutton;
  final IconData icon;
  
  final void Function()? onPressed;
   bool active;
   CustomButtonAppBar(
      {super.key,
      required this.textbutton,
      required this.icon,
      required this.active,
      required this.onPressed,
     });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color:active == true ? Colors.purple :Colors.grey,
          ),
          Text(
            textbutton,
            style: TextStyle(color: active == true ? Colors.purple :Colors.grey
            ),
          )
        ],
      ),
    );
  }
}
