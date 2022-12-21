import 'package:flutter/material.dart';
import 'package:g62_find_home/app/ui/views/home/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Obx(
            () => Text("${controller.userFullName}"),
          ),
        ),
      ),
    );
  }
}
