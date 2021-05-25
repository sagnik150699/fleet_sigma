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

  bool _isLoading = true;
  bool get isLoading => _isLoading;
  set isLoading(bool loading) {
    notifyListeners();
  }

  //vessel Information
  int _vesselListStart=0;
  int _vesselListEnd=10;
  int get vesselListStart => _vesselListStart;
  int get vesselListEnd => _vesselListEnd;
  set vesselListStart(int val)=> notifyListeners();
  set vesselListEnd(int val) =>  notifyListeners();
  List<VesselInformationModel> _vesselInformationModel = [];
  List<VesselInformationModel> get vesselInformationModel =>
      _vesselInformationModel;
  vesselInformation(String start, String end) async {
    _isLoading = true;
    notifyListeners();
    VesselInformationRepository _vesselRepository =
        new VesselInformationRepository();
    _vesselInformationModel = await _vesselRepository.getAllVessels(start, end);
    _isLoading = false;
    notifyListeners();
  }
}
