import 'package:dhur_hoy_na_ken/models/cart.dart';
import 'package:dhur_hoy_na_ken/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  
   
   final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
   bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if(!isInCart){
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();
          
          _cart.catalog = _catalog;
          _cart.add(catalog);
          // setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            // ignore: deprecated_member_use
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          )),
      // ignore: prefer_const_constructors
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}