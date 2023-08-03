import 'package:flutter/material.dart';

class CustomSignUporsignin extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function()? onTap;
  const CustomSignUporsignin(
      {super.key, required this.textone, required this.texttwo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //const Text("Don't have an account ?"),
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: const TextStyle(
                color: Colors.purple, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
