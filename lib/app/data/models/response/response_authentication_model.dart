class ResponseAuthenticationModel {
  ResponseAuthenticationModel({
    this.success,
    this.requestToken,
    this.idUser,
  });

  bool? success;
  String? requestToken;
  String? idUser;

  factory ResponseAuthenticationModel.fromJson(Map<String, dynamic> json) =>
      ResponseAuthenticationModel(
        success: json["success"],
        requestToken: json["requestToken"],
        idUser: json["idUser"],
      );
}
