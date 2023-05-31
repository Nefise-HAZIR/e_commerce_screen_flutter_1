import 'package:e_commerce_flutter/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        width: 154,
        padding: EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultBorderRadius)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(defaultBorderRadius)),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
