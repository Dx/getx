import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        print("build home");
        return Scaffold(
          body: Center(
            child: GetBuilder<HomeController>(
              id: "text",
              builder: (_)=>Text(_.counter.toString())
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _.increment();
            },
            child: Icon(Icons.add),
          ),
        );
      }
    );
  }
}
