import 'package:dio/dio.dart';
class LoginWebModel{
  Dio dio = new Dio();
  Future loginJson(String email, String password) async {
    String url = "http://54.221.198.168:8083/api/v1/auth/login";

    var response = await dio.post(
      url,
      options: Options(headers: {'content-type': 'application/json'}),
      data: {'email': email, 'password': password},
    );
    try {
      var responseString = response.data;
      print("${responseString.toString()}");
      return responseString.toString();
    } catch (e) {
      return null;
    }
  }
}