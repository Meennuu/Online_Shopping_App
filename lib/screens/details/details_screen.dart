import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlinesopapp/constants.dart';
import 'package:onlinesopapp/models/product.dart';
import 'package:onlinesopapp/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: product.color,
        appBar: bulidAppBar(context),
        body: Body(
          product: product,
        ));
  }

  AppBar bulidAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          )),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
          color: kTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          color: kTextColor,
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
