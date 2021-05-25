import 'package:fleet_sigma/web/vessel_information/vessel_information_model.dart';
import 'package:fleet_sigma/web/vessel_information/vessle_information_repository.dart';
import 'package:flutter/cupertino.dart';

class UserInformation extends ChangeNotifier {
  String _token;
  String get token => _token;
  set token(String val) {
    notifyListeners();
  }

  putToken(String val) {
    _token = val;
    notifyListeners();
  }

  bool _isLoading=true;
  bool get isLoading => _isLoading;
  set isLoading(bool loading) {
    notifyListeners();
  }

  //vessel Information
  List<VesselInformationModel> _vesselInformationModel = [];
  List<VesselInformationModel> get vesselInformationModel =>
      _vesselInformationModel;
  vesselInformation() async {
    VesselInformationRepository _vesselRepository =
        new VesselInformationRepository();
    _vesselInformationModel = await _vesselRepository.getAllVessels("0", "100");
    _isLoading=false;
    notifyListeners();
  }
}
