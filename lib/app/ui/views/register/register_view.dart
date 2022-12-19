import 'package:flutter/material.dart';
import 'package:g62_find_home/app/ui/views/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (controller) => Scaffold(),
    );
  }
}
