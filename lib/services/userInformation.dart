import 'package:flutter/cupertino.dart';

class UserInformation extends ChangeNotifier {
  String _token;
  String get token => _token;
  set token(String val) {
    notifyListeners();
  }
  putToken(String val){
    _token=val;
    notifyListeners();
  }
}
