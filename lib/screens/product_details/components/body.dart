import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furtniture_app/constants.dart';
import 'package:furtniture_app/models/product.dart';
import 'package:furtniture_app/screens/product_details/components/pager.dart';
import 'package:furtniture_app/screens/product_details/components/product_action.dart';
import 'package:furtniture_app/screens/product_details/components/product_meta.dart';
import 'package:furtniture_app/screens/product_details/components/product_poster.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Hero(
                          tag: "${product.id}",
                          child:
                              ProductPoster(size: size, image: product.image))),
                  Pager(),
                  ProductMeta(product: product),
                ],
              ),
            ),
            ProductAction()
          ],
        )),
      ),
    );
  }
}
