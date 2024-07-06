import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlinesopapp/constants.dart';
import 'package:onlinesopapp/models/product.dart';
import 'package:onlinesopapp/screens/details/components/add_to_cart.dart';
import 'package:onlinesopapp/screens/details/components/cart_counter.dart';
import 'package:onlinesopapp/screens/details/components/color_and_size.dart';
import 'package:onlinesopapp/screens/details/components/counter_with_fav_btn.dart';
import 'package:onlinesopapp/screens/details/components/description.dart';
import 'package:onlinesopapp/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

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
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  // height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPaddin,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPaddin,
                      ),
                      const CounterWwithFavBtn(),
                      const SizedBox(
                        height: kDefaultPaddin,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTilteWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
