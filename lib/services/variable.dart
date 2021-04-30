import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Variable {
  Text textPoppins(str, size, colour, weight) {
    return Text(
      str,
      textAlign: TextAlign.left,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            decoration: TextDecoration.none,
            color: colour,
            fontSize: size,
            fontWeight: weight),
      ),
    );
  }

  Text text2(str, size, colour, weight) {
    return Text(
      str,
      textAlign: TextAlign.left,
      style: GoogleFonts.alegreyaSansSc(
        textStyle: TextStyle(
            decoration: TextDecoration.none,
            color: colour,
            fontSize: size,
            fontWeight: weight),
      ),
    );
  }
  void scaffoldMessenger(BuildContext context, String title) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.black,
      content: textPoppins(
          title, 18.0, Colors.white, FontWeight.w500),
    ));
  }
}
