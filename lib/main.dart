import 'package:dhur_hoy_na_ken/pages/cart_page.dart';
import 'package:dhur_hoy_na_ken/pages/login_page.dart';
import 'package:dhur_hoy_na_ken/utils/routes.dart';
import 'package:dhur_hoy_na_ken/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: HomePage(),
      

      //themeMode holo ami ki amar device er kon mode a rakhbo light or dark eta thik kore
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      
       //  debugShowCheckedModeBanner asole amade screen a j degug lekha ta ase ota soranor jonno use kora hoy r ki
       debugShowCheckedModeBanner: false, 
      
      
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context)=> const LoginPage(),
          MyRoutes.homeRoute: (context)=> const HomePage(),
          MyRoutes.loginRoute: (context)=> const LoginPage(),
          MyRoutes.cartRoute: (context)=> const CartPage(),
        },
    );
  }
}
