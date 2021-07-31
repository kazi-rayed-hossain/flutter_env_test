import 'package:dhur_hoy_na_ken/models/catalog.dart';
import 'package:dhur_hoy_na_ken/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) 
  :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.red800.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                          shape: MaterialStateProperty.all(const StadiumBorder())
                      ),
                      child: "Add to cart".text.make(),
                    ).wh(120, 50)
                  ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
      
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),

            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [

                      catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                      catalog.desc.text.color(MyTheme.darkBluishColor).bold.make(),
                      10.heightBox,
                      "Sea lorem consetetur accusam amet sit voluptua. Est diam est labore accusam diam et et lorem. Eos vero et justo tempor clita. Labore et nonumy diam lorem sanctus amet elitr est stet, invidunt sea accusam aliquyam elitr. Diam rebum amet sea ut dolores stet justo, sanctus sed clita takimata et.".text.make(),

                    ],
                  ).py64(),
                  
                ),
              )
            )
      
          ],
        ),
      ),

    );
  }
}
