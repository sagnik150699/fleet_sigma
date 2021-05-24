import 'package:fleet_sigma/mobile/login.dart';
import 'package:fleet_sigma/services/userInformation.dart';
import 'package:fleet_sigma/web/loginWebView.dart';
import 'package:fleet_sigma/web/userWebView.dart';
import 'package:fleet_sigma/web/vessel_information/vessle_information_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: UserInformation(),
      child: MaterialApp(
        home: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return VesselInformationView();
            } else
              return VesselInformationView();
          },
        ),
      ),
    );
  }
}
