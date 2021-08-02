import 'package:dhur_hoy_na_ken/core/store.dart';
import 'package:dhur_hoy_na_ken/models/cart.dart';
import 'package:dhur_hoy_na_ken/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vxstate/vxstate.dart';

// ignore: must_be_immutable
class AddToCart extends StatelessWidget {
  final Item catalog;
  // ignore: prefer_const_constructors_in_immutables
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  //  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    // ______________________________________________________________________________________________________________
    // VxState.listen(context, to: [AddMutation]);
    
    VxState.streamOf(AddMutation);
    // ______________________________________________________________________________________________________________
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
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
