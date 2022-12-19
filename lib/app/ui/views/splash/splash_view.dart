import 'package:flutter/material.dart';
import 'package:g62_find_home/app/routes/routes_name.dart';
import 'package:g62_find_home/app/ui/views/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              Get.offNamed(RoutesName.LOGIN);
            },
            child: const Text("Ir a login"),
          ),
        ),
      ),
    );
  }
}
