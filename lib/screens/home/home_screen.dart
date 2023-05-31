import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/category.dart';
import 'package:e_commerce_flutter/models/product.dart';
import 'package:e_commerce_flutter/screens/home/components/categories.dart';
import 'package:e_commerce_flutter/screens/home/components/new_arrival.dart';
import 'package:e_commerce_flutter/screens/home/components/popular.dart';
import 'package:e_commerce_flutter/screens/home/components/product_card.dart';
import 'package:e_commerce_flutter/screens/home/components/search_form.dart';
import 'package:e_commerce_flutter/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (() {}),
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            Text(
              "16/8 Ankara Sincan",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Notification.svg"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const Text(
                "Best Outfit for you",
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                child: SearchForm(),
              ),
              const Categories(),
              const SizedBox(height: defaultPadding,),
              NewArrival(),
              const SizedBox(height: defaultPadding,),
              Popular()
            ],
          ),
        ),
      ),
    );
  }
}

