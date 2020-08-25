import 'package:flutter/material.dart';
import 'package:furtniture_app/constants.dart';
import 'package:furtniture_app/screens/products/components/categories.dart';
import 'package:furtniture_app/screens/products/components/search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.4)),
            )
          ],
        ))
      ],
    );
  }
}
