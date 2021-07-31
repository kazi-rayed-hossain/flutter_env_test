// import 'dart:ui';
// import 'dart:html';

import 'package:dhur_hoy_na_ken/utils/routes.dart';
import 'package:dhur_hoy_na_ken/widgets/home_widgets/catalog_header.dart';
import 'package:dhur_hoy_na_ken/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/material.dart';
import 'package:dhur_hoy_na_ken/models/catalog.dart';
// import 'package:dhur_hoy_na_ken/widgets/drawer.dart';
import 'package:dhur_hoy_na_ken/widgets/themes.dart';
import 'package:flutter/cupertino.dart';

// import 'package:dhur_hoy_na_ken/widgets/item_widgets.dart';

// import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Rayed";

  @override
  void initState() {
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
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        floatingActionButton: FloatingActionButton(
          onPressed: ()=> Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: MyTheme.darkBluishColor,
          child: const Icon(CupertinoIcons.cart),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogHeader(),
                if (CatalogModel.items.isNotEmpty)
                  const CatalogList().py16().expand()
                else
                  const Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ));
  }
}
























































































// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final int days = 30;

//   final String name = "dine gayeb";

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   loadData() async {
//     // await Future.delayed(const Duration(seconds: 2));
//     final catalogJson =
//         await rootBundle.loadString("assets/files/catalog.json");
//     final decodedData = jsonDecode(catalogJson);
//     var productsData = decodedData["products"];
//     CatalogModel.items = List.from(productsData)
//         .map<Item>((item) => Item.fromMap(item))
//         .toList();
//     setState(() {});
//   }

//   @override

//   //BuildContext context holo kon jinish er location koi ta bole
//   Widget build(BuildContext context) {
//     //dummyList create
//     // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Catalog App"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
//             ? GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 16,
//                   crossAxisSpacing: 16,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item = CatalogModel.items[index];
//                   return Card(
//                     clipBehavior: Clip.antiAlias,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                     child: GridTile(
//                       header: Container(
//                         child: Text(
//                           item.name,
//                           style: const TextStyle(color: Colors.white),
//                           ),
//                           padding: const EdgeInsets.all(12),
//                           decoration: const BoxDecoration(
//                             color: Colors.deepPurple,
//                           ),
//                       ),
//                       child: Image.network(item.image),
//                       footer: Container(
//                         child: Text(
//                           item.price.toString(),
//                           style: const TextStyle(color: Colors.white),
//                           ),
//                           padding: const EdgeInsets.all(12),
//                           decoration: const BoxDecoration(
//                             color: Colors.black,
//                           ),
//                       ),
//                     )
//                   );
//                 },
//                 itemCount: CatalogModel.items.length,
//               )

//             // ListView.builder(
//             //     itemCount: CatalogModel.items.length,
//             //     itemBuilder: (context, index)=>
//             //        ItemWidgets(
//             //         item: CatalogModel.items[index],
//             //       ),

//             //   )

//             : const Center(
//                 child: CircularProgressIndicator(),
//               ),
//       ),
//       drawer: const myDrawer(),
//     );
//   }
// }
