import 'package:dio/dio.dart';
import 'package:g62_find_home/app/data/models/request/request_user_model.dart';
import 'package:g62_find_home/app/data/models/response/response_user_model.dart';
import 'package:get/get.dart';

class UserProvider {
  final _dio = Get.find<Dio>();

  Future<ResponseUserModel> postUserInsert(RequestUserModel request) async {
    final response = await _dio.post(
      "/api/user/register",
      options: Options(
        headers: {
          "Authorization": "Token 3QLScXljMcYG3ZwrGlItfKXTxKVpt39hKvIhPrBURIuAdiq5v5a3sCTR6T11GmdDx",
        },
      ),
      data: request.toMap(),
    );
    return ResponseUserModel.fromJson(response.data);
  }
}
