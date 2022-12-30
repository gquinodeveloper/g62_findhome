import 'package:g62_find_home/app/data/models/response/response_house_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
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
  House house = House();
  //Variables

  //Functions
  void _initialize() async {
    house = Get.arguments as House;
  }
}
