import 'package:fleet_sigma/services/variable.dart';
import 'package:fleet_sigma/web/admin/adminWebView.dart';
import 'package:fleet_sigma/web/loginWebViewModel.dart';
import 'package:fleet_sigma/web/userWebView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';

class LoginPageWebView extends StatefulWidget {
  @override
  _LoginPageWebViewState createState() => _LoginPageWebViewState();
}

class _LoginPageWebViewState extends State<LoginPageWebView> {
  Dio dio = new Dio();
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  Variable _variable = new Variable();
  LoginWebViewModel _loginWebModel = new LoginWebViewModel();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: _variable.textPoppins(
            "Fleet Sigma", 30.0, Colors.white, FontWeight.bold),
      ),
      body: Center(
        child: SizedBox(
          width: categoryWidth / 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.anchor_outlined,
                size: 150.0,
              ),
              SizedBox(height: categoryHeight / 20),
              TextFormField(
                controller: _emailField,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: "Email",
                    hintStyle: GoogleFonts.tajawal()),
              ),

              SizedBox(height: categoryHeight / 30),
              TextFormField(
                obscureText: true,
                controller: _passwordField,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                    hintText: "Password",
                    hintStyle: GoogleFonts.tajawal()),
              ),

              SizedBox(height: categoryHeight / 20),
              //LOGIN BUTTON
              SizedBox(
                height: categoryHeight / 14,
                width: categoryWidth / 4,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.black,
                  child: _variable.textPoppins(
                      "LOGIN", 25.0, Colors.white, FontWeight.bold),
                  onPressed: () async {
                    final user = await _loginWebModel.loginJson(
                        _emailField.text, _passwordField.text);
                    if (user == 2)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminWebView()),
                      );
                    else if(user == 3){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserWebView()),
                      );
                    }
                    else _variable.scaffoldMessenger(context, "Invalid Credentials");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
