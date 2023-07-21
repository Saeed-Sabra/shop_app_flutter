import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  // final Function press;
  const ItemCard({
    super.key,
    required this.product,
    // required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: const TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
