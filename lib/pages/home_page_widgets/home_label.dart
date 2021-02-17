import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/controllers/home_controller.dart';

class Homelabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      // sin init porque es un hijo
      id: "text",
      builder: (_) => Text(_.counter.toString()),
    );
  }
}
