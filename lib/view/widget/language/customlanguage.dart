import 'package:flutter/material.dart';

class CustomButtomLang extends StatelessWidget {
  final String textbuttom;
  final void Function()? onPressed;
  const CustomButtomLang({super.key, required this.textbuttom, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: Colors.purple,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(textbuttom),
      ),
    );
  }
}
