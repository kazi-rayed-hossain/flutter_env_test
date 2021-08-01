import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      // ignore: deprecated_member_use
      accentColor: darkBluishColor,
      // ignore: deprecated_member_use
      buttonColor: darkBluishColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      ));

      static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      // ignore: deprecated_member_use
      accentColor: Colors.white,
      // ignore: deprecated_member_use
      buttonColor: lightBluishColor,
      brightness: Brightness.dark,

      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme.copyWith(headline6: context.textTheme.headline6!.copyWith(color: Colors.white)),
      ));


        //Colors
      static Color creamColor = const Color(0xfff5f5f5);
      static Color darkCreamColor = Vx.gray900;
      static Color darkBluishColor = const Color(0xff403b58);
      static Color lightBluishColor = Vx.indigo500;
}
