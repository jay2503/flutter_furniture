import 'package:flutter/material.dart';
import 'package:furtniture_app/constants.dart';
import 'package:furtniture_app/models/product.dart';
import 'package:furtniture_app/screens/product_details/product_details.dart';
import 'package:furtniture_app/screens/products/components/categories.dart';
import 'package:furtniture_app/screens/products/components/product_card.dart';
import 'package:furtniture_app/screens/products/components/search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(),
          Categories(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                        product: products[index],
                        productIndex: index,
                        press: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(
                                    product: products[index],
                                  )));
                        },
                      )),
            ],
          ))
        ],
      ),
    );
  }
}
