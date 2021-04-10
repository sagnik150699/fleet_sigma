import 'package:fleet_sigma/services/variable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWeb extends StatefulWidget {
  @override
  _LoginPageWebState createState() => _LoginPageWebState();
}

class _LoginPageWebState extends State<LoginPageWeb> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  Variable _variable = new Variable();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
            backgroundColor: Colors.black,
        title: _variable.text("Fleet Sigma", 30.0, Colors.white, FontWeight.bold),
      ),
      body: Center(
        child: SizedBox(
          width: categoryWidth/4,
          //height: categoryHeight/2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.anchor_outlined, size: 100.0,),
              SizedBox(height: categoryHeight/20),
              TextFormField(
                controller: _emailField,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                       // borderSide: BorderSide(color: Colors.blue),
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0))),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: "Email",
                    hintStyle: GoogleFonts.tajawal()),
              ),

              SizedBox(height: categoryHeight/30),
              TextFormField(
                controller: _passwordField,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                       // borderSide: BorderSide(color: Colors.blue),
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0))),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: "Password",
                    hintStyle: GoogleFonts.tajawal()),
              ),


              SizedBox(height: categoryHeight/20),
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
                  child: _variable.text("LOGIN", 25.0, Colors.white, FontWeight.bold),
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
