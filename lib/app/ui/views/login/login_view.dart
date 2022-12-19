import 'package:flutter/material.dart';
import 'package:g62_find_home/app/routes/routes_name.dart';
import 'package:g62_find_home/app/ui/views/login/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: controller.doAuthentication,
                child: const Text("Authentication"),
              ),
              TextButton(
                onPressed: () => Get.toNamed(RoutesName.REGISTER),
                child: const Text("register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
