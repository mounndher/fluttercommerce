import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  final String text;
  const CustomTextTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2!);
  }
}
