import 'package:fleet_sigma/services/variable.dart';
import 'package:flutter/material.dart';

import 'admin/adminWebView.dart';

class UserWebView extends StatefulWidget {
  @override
  _UserWebViewState createState() => _UserWebViewState();
}

class _UserWebViewState extends State<UserWebView> {
  Variable _variable = new Variable();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: _variable.textPoppins(
            "Welcome to FleetSigma", 30.0, Colors.white, FontWeight.bold),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: MaterialButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 200.0,
                    ),
                    Card(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: _variable.textPoppins(
                            "User management information",
                            30.0,
                            Colors.white,
                            FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                onPressed: () async {},
              ),
            ),
            Container(
              child: MaterialButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.anchor_outlined,
                      size: 200.0,
                    ),
                    Card(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: _variable.textPoppins("Vessel information", 30.0,
                            Colors.white, FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminWebView()),
                  );
                },
              ),
            )
          ],
        ),
      ]),
    );
  }
}
