import 'package:flutter/material.dart';
import 'package:g62_find_home/app/ui/views/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterForm extends GetView<RegisterController> {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(controller.message),
    );
  }
}
