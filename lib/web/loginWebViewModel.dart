import 'package:dio/dio.dart';
import 'package:fleet_sigma/services/userInformation.dart';

class LoginWebViewModel {
  Dio dio = new Dio();
  UserInformation _information = new UserInformation();
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
      if (responseString['error'] == 'Invalid credentials') {
        return 1;
      } else if (responseString['organizationId'] == 'null') {
        _information.putToken(responseString['token']);
        return 2;
      } else {
        _information.putToken(responseString['token']);
        return 3;
      }
    } catch (e) {
      return null;
    }
  }
}
