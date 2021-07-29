import 'package:dhur_hoy_na_ken/models/catalog.dart';
import 'package:dhur_hoy_na_ken/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:dhur_hoy_na_ken/widgets/item_widgets.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "dine gayeb";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override

  //BuildContext context holo kon jinish er location koi ta bole
  Widget build(BuildContext context) {
    //dummyList create
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index)=> 
                   ItemWidgets(
                    item: CatalogModel.items[index],
                  ),
                
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const myDrawer(),
    );
  }
}
