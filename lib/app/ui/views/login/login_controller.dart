import 'dart:convert';

import 'package:g62_find_home/app/data/models/request/request_authentication_model.dart';
import 'package:g62_find_home/app/data/respositories/authentication_repository.dart';
import 'package:g62_find_home/app/routes/routes_name.dart';
import 'package:g62_find_home/app/services/local_storage_service.dart';
import 'package:g62_find_home/core/utils/keys.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instances
  final _repositoryAuthentication = Get.find<AuthenticationRepository>();

  //Variables
  RxBool isLoading = RxBool(false);
  RxBool isObscureText = RxBool(false);

  //Functions

  void _initialize() {}

  void showPassword() {
    isObscureText.value = !isObscureText.value;
  }

  void doAuthentication() async {
    try {
      isLoading.value = true;
      final response = await _repositoryAuthentication.authentication(
        RequestAuthenticationModel(
          email: "gustavo.test@gmail.com",
          password: "Demo1234",
        ),
      );
      if (response.success == true) {
        await LocalStorageService.set(
          key: Keys.kTempo,
          value: jsonEncode(response.user?.toJson()),
        );

        await LocalStorageService.set(
          key: Keys.kToken,
          value: response.accessToken ?? "",
        );

        await LocalStorageService.set(
          key: Keys.kUserFullName,
          value: "${response.user?.firstName} ${response.user?.lastName}",
        );
        isLoading.value = false;
        Get.offNamed(RoutesName.HOME);
      }
    } catch (error) {
      isLoading.value = false;
      Get.snackbar("error", error.toString());
    }
  }
}
