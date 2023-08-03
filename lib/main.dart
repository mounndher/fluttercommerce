import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mch/core/localisation/translation.dart';
import 'package:mch/routes.dart';
// import 'package:mch/test.dart';
 


import 'binding/intialbinding.dart';
import 'core/localisation/changelocal.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller=Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     locale: controller.language,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black),
                bodyText1: TextStyle(
                  height: 2,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                
                color: Colors.grey),
                headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black),
                
              ),
              
              
        useMaterial3: true,
      ),
      //home: const Language(),
      initialBinding:InitialBindigns(),
      //routes: routess,
      getPages: routes,
    );
  }
}
