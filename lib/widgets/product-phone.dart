import 'package:flutter/material.dart';
import 'package:improving_flutter_shop/models/phone.dart';
import 'package:improving_flutter_shop/widgets/product-card.dart';

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
