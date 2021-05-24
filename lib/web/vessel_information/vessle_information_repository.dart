import 'package:dio/dio.dart';
import 'package:fleet_sigma/web/vessel_information/vessel_information_model.dart';

class VesselInformationRepository {
  Dio dio = new Dio();
  // Future  getAllVessels() async {
  //   String url =
  //       "http://54.221.198.168:8083/api/v1/allVessels?offset=10&limit=10";
  //   final response = await dio.get(
  //     url,
  //     options: Options(headers: {'content-type': 'application/json'}),
  //   );
  //   var a =await response.data;
  //   return a;
  // }

  Future getAllVessels() async {
    String url =
        "http://54.221.198.168:8083/api/v1/allVessels?offset=0&limit=100";
    final response = await dio.get(
      url,
      options: Options(headers: {'content-type': 'application/json'}),
    );

   // var vesselInformation = VesselInformationModel.fromJson(response.data[0]);

    //print("sexy"+vesselInformation.id);


    List<VesselInformationModel> vs=[];
    for(int i=0;i<response.data.length;i++){
      vs.add(VesselInformationModel.fromJson(response.data[i]));
    }
    for(int i=0;i<response.data.length;i++){
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
