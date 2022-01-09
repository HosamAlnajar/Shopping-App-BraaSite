import 'package:flutter/material.dart';

import 'package:shopping_app_braasite/constants.dart';
import 'package:shopping_app_braasite/models/Product.dart';
import 'package:shopping_app_braasite/screens/details/components/cart_counter.dart';
import 'package:shopping_app_braasite/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'fav_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  //height: 500,
                  padding: EdgeInsets.only(
                    top: size.height * .12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  margin: EdgeInsets.only(top: size.height * .3),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CartCounter(),
                          FavBtn(),
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(
                        product: product,
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
