import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/product.dart';
import 'package:e_commerce_flutter/screens/details/details_screen.dart';
import 'package:e_commerce_flutter/screens/home/components/product_card.dart';
import 'package:e_commerce_flutter/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: ProductCard(
                          image: demo_product[index].image,
                          title: demo_product[index].title,
                          bgColor: demo_product[index].bgColor,
                          price: demo_product[index].price,
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return DetailsScreen(product: demo_product[index],);
                            })));
                          }),
                    )),
          ),
        )
      ],
    );
  }
}
