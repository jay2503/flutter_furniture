import 'package:flutter/material.dart';
import 'package:furtniture_app/constants.dart';
import 'package:furtniture_app/screens/products/components/body.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var buildAppBar = AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text("Farsi Puri"),
      centerTitle: false,
    );

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar,
      body: Body(),
    );
  }
}
