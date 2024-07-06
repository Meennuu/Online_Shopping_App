import 'package:flutter/material.dart';
import 'package:onlinesopapp/constants.dart';
import 'package:onlinesopapp/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback press;

  const ItemCard({super.key, this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    if (product == null) {
      return Container(
        child: const Text('Product is not available'),
      );
    }

    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                  tag: "${product!.id}", child: Image.asset(product!.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product!.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product!.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
