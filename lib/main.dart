import 'package:flutter/material.dart';
import 'package:getx_demo/controllers/global_controller.dart';
import 'package:getx_demo/pages/splash_page.dart';
//import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController()); // Controlador global de get x

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
