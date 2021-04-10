import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Variable {
  Text text(str, size, colour, weight) {
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
}
