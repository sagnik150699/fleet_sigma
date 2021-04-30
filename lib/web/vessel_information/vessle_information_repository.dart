import 'package:dio/dio.dart';

class VesselInformationRepository {
  Dio dio = new Dio();
  Future getAllVessels() async {
    String url =
        "http://54.221.198.168:8083/api/v1/allVessels?offset=10&limit=10";
    final response = await dio.get(
      url,
      options: Options(headers: {'content-type': 'application/json'}),
    );
    print(response.data);
  }

  Future getFleetList() async {
    String url =
        "http://54.221.198.168:8083/api/v1/getFleetByOrg?orgId=7ba5fcbf-c0ff-485c-9f6d-7e58cc854c28";
    final response = await dio.get(
      url,
      options: Options(headers: {'content-type': 'application/json'}),
    );
    print(response.data);
  }
}
