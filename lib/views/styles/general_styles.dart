import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildThemeData(){
  return ThemeData(
    textTheme: TextTheme(
      titleLarge: GoogleFonts.aboreto(),
      bodyMedium: GoogleFonts.lato()
    )
  );
}

TextStyle styleTextTitle(BuildContext context, double fontSize){
  return Theme.of(context).textTheme.titleLarge!.copyWith(
    fontSize: fontSize,
    fontWeight: FontWeight.w800,
    color: Color.fromARGB(255, 32, 97, 151)
  );
}