import 'package:flutter/material.dart';
import 'package:onlinesopapp/constants.dart';
import 'package:onlinesopapp/models/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color",
              ),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C85),
                    isselected: true,
                  ),
                  ColorDot(color: Color(0xFF850C85)),
                  ColorDot(color: Color(0xFF69AC85))
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(children: [
            const TextSpan(style: TextStyle(color: kTextColor), text: "Size\n"),
            TextSpan(
                // style: TextStyle(color: kTextColor),
                text: "${product.size}cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold))
          ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isselected;
  const ColorDot({
    super.key,
    required this.color,
    this.isselected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isselected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
