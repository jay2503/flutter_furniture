import 'package:flutter/material.dart';
import 'package:furtniture_app/constants.dart';
import 'package:furtniture_app/models/product.dart';

class ProductMeta extends StatelessWidget {
  final Product product;

  const ProductMeta({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Hero(
              tag: "ptitle_${product.id}",
              child: Text(
                product.title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          Hero(
            tag: "pprice_${product.id}",
            child: Text("\$${product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: kSecondaryColor)),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(product.description)),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
