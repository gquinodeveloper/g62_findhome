import 'package:g62_find_home/app/data/models/request/request_authentication_model.dart';
import 'package:g62_find_home/app/data/respositories/authentication_repository.dart';
import 'package:g62_find_home/app/routes/routes_name.dart';
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

  //Functions

  void _initialize() {}

  void doAuthentication() async {
    try {
      final response = await _repositoryAuthentication.authentication(
        RequestAuthenticationModel(
          email: "email",
          password: "password",
        ),
      );
      if (response.requestToken != null) {
        // Get.offNamed(RoutesName.LOGIN);
        // Print("IR A HOME");
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
  }
}
