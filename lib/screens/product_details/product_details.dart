import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furtniture_app/constants.dart';
import 'package:furtniture_app/models/product.dart';
import 'package:furtniture_app/screens/product_details/components/body.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
      centerTitle: false,
      leading: IconButton(
        icon: FaIcon(FontAwesomeIcons.arrowLeft,
            color: Theme.of(context).textTheme.bodyText1.color),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
