import 'package:flutter/material.dart';
import 'package:improving_flutter_shop/models/phone.dart';
import 'package:improving_flutter_shop/utils/fontStyle.dart';

class ProductPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var product = products[index];
            return ProductCard(
                imgURL: product.image,
                name: product.title,
                color: product.color);
          }),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imgURL;
  final String name;
  final int color;

  ProductCard({this.imgURL, this.name, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Container(
        width: 165,
        height: 240,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                child: Container(
                  width: 140,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          offset: Offset(0, 10),
                          blurRadius: 12,
                        )
                      ]),
                ),
              ),
            ),
            Positioned(
              right: -22,
              top: -10,
              child: Image.asset(
                imgURL,
                width: 150,
                height: 130,
              ),
            ),
            Positioned(
              left: 30,
              bottom: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name, style: productTitleStyle),
                  Text("color $color", style: productSubTitleStyle)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
