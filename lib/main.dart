import 'package:dhur_hoy_na_ken/pages/login_page.dart';
import 'package:dhur_hoy_na_ken/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: HomePage(),
      

      //themeMode holo ami ki amar device er kon mode a rakhbo light or dark eta thik kore
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
       ),
      //  debugShowCheckedModeBanner: false, eta asole amade screen a j degug lekha ta ase ota soranor jonno use kora hoy r ki
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        ),
        initialRoute: "/",
        routes: {
          "/": (context)=> LoginPage(),
          MyRoutes.homeRoute: (context)=> const HomePage(),
          MyRoutes.loginRoute: (context)=> LoginPage(),
        },
    );
  }
}
