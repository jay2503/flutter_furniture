import 'package:flutter/material.dart';
import 'package:furtniture_app/constants.dart';
import 'package:furtniture_app/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, this.product, this.productIndex, this.press})
      : super(key: key);

  final Product product;
  final int productIndex;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        height: 160,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Background
            Container(
              height: 136,
              decoration: BoxDecoration(
                  color: productIndex.isEven ? kBlueColor : kSecondaryColor,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [kDefaultShadow]),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),

            // Image
            Positioned(
                top: 0,
                right: 0,
                child: Hero(
                  tag: "${product.id}",
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 160,
                    width: 200,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                )),

            // Product title and price
            Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Container(
                        child: Hero(
                          tag: "ptitle_${product.id}",
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding / 4),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                topRight: Radius.circular(22))),
                        child: Hero(
                          tag: "pprice_${product.id}",
                          child: Text("\$${product.price}",
                              style: Theme.of(context).textTheme.button),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
