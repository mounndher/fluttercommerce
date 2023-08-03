import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/functions/checkinternt.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  var res;
  intialdata() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    intialdata();
    super.initState();
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data')),
    );
  }
}
