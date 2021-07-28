import 'package:dhur_hoy_na_ken/models/catalog.dart';
import 'package:dhur_hoy_na_ken/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:dhur_hoy_na_ken/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // variable declaration start
  final int days = 30;
  final String name = "dine gayeb";

  // variable declaration end
  @override

  //BuildContext context holo kon jinish er location koi ta bole
  Widget build(BuildContext context) {
    final dummyList = List.generate(20,(index)=>CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidgets(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const myDrawer(),
    );
  }

  // bringvegetables(){

  // }
}
