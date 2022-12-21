import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:g62_find_home/app/data/providers/authentication_provider.dart';
import 'package:g62_find_home/app/data/providers/user_provider.dart';
import 'package:g62_find_home/app/data/respositories/authentication_repository.dart';
import 'package:g62_find_home/app/data/respositories/user_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static initialize() {
    //LOCAL STORAGE
    Get.put<FlutterSecureStorage>(const FlutterSecureStorage());

    //PROVIDERS
    Get.put<AuthenticationProvider>(AuthenticationProvider());
    Get.put<UserProvider>(UserProvider());

    //REPOSITORIES
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<UserRepository>(UserRepository());
  }
}
