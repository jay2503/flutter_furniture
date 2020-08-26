import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furtniture_app/constants.dart';

class ProductAction extends StatelessWidget {
  const ProductAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          FlatButton.icon(
            icon: FaIcon(FontAwesomeIcons.comment, color: Colors.white),
            label: Text(
              "Chat",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          Spacer(),
          FlatButton.icon(
            icon: FaIcon(FontAwesomeIcons.cartPlus, color: Colors.white),
            label: Text("Add to Cart", style: TextStyle(color: Colors.white)),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
