import 'package:g62_find_home/app/data/models/response/response_house_model.dart';
import 'package:g62_find_home/app/data/providers/house_provider.dart';
import 'package:get/get.dart';

class HouseRepository {
  final _apiProvider = Get.find<HouseProvider>();
  Future<ResponseHouseModel> getHouses() => _apiProvider.getHouses();
}
