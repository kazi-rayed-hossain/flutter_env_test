import 'package:dhur_hoy_na_ken/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;
  const ItemWidgets({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc), 
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        
        ),
      ),
    );
  }
}
