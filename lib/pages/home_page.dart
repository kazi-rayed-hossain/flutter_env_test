import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // variable declaration start
  final int days = 30;
  final String name = "dine gayeb";

  // variable declaration end
  @override

  //BuildContext context holo kon jinish er location koi ta bole
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text("Appp name"),
      ),
        
      body : Center(
        child: Container(
          child: Text('hutu tutu $days $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }


  // bringvegetables(){
    
  // }
}
