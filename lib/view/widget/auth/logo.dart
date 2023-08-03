import 'package:flutter/material.dart';

import '../../../core/constant/imageassets.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(ImageAsset.logo,height: 150,);
  }
}