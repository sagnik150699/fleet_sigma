import 'package:dio/dio.dart';
import 'package:fleet_sigma/web/vessel_information/vessel_information_model.dart';

class VesselInformationRepository {
  Dio dio = new Dio();
  Future getAllVessels(String start, String limit) async {
    String url =
        "http://54.221.198.168:8083/api/v1/allVessels?offset=$start&limit=$limit";
    final response = await dio.get(
      url,
      options: Options(headers: {'content-type': 'application/json'}),
    );
    List<VesselInformationModel> vs = [];
    for (int i = 0; i < response.data.length; i++) {
      vs.add(VesselInformationModel.fromJson(response.data[i]));
    }
    for (int i = 0; i < response.data.length; i++) {
      print(vs[i].id);
    }
    return vs;
  }

  // Future<Stream> getFleetList() async {
  //   String url =
  //       "http://54.221.198.168:8083/api/v1/getFleetByOrg?orgId=7ba5fcbf-c0ff-485c-9f6d-7e58cc854c28";
  //   final response = await dio.get(
  //     url,
  //     options: Options(headers: {'content-type': 'application/json'}),
  //   );
  //   return response.data;
  // }
}
