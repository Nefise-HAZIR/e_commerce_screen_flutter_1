import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       children: List.generate(demo_categories.length, (index) => Padding(
         padding:EdgeInsets.only(right: defaultPadding),
         child: CategoryCard(
               icon:demo_categories[index].icon,
               title: demo_categories[index].title,
               press: () { },
            ), 
         )
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String icon, title;
  final VoidCallback press; 
  const CategoryCard({
    Key? key, required this.icon, required this.title, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => press(),
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
        child: Column(
         children: [
          SvgPicture.asset(icon),
          Text(
            title,
            style: TextStyle(color: Colors.black),
          )
         ]
        ),
      ),
    );
  }
}
