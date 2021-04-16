import 'package:fleet_sigma/mobile/login.dart';
import 'package:fleet_sigma/web/loginWebView.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return LoginPageWeb();
          } else
            return LoginPageMobile();
        },
      ),
    );
  }
}
