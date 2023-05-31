import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/product.dart';
import 'package:e_commerce_flutter/screens/details/components/color_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "assets/icons/Heart.svg",
                    height: 20,
                  )))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
           child: Container(
                padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2,
                defaultPadding, defaultPadding),
                 decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 3),
                    topRight: Radius.circular(defaultBorderRadius * 3))),
             child:
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                               Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text(
                      "\$" + product.price.toString(),
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                              ),
                              const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the"),
                              ),
                              const Text(
                  "Colors",
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                  height: defaultPadding / 2,
                              ),
                              Row(
                  children: [
                    ColorDot(
                      color: Color(0xFFBEE8EA),
                      isActive: false,
                      press: () {},
                    ),
                    ColorDot(
                      color: Color(0xFF141B4A),
                      isActive: true,
                      press: () {},
                    ),
                    ColorDot(
                      color: Color(0xFFF4E5C3),
                      isActive: false,
                      press: () {},
                    ),
                  ],
                              ),
                              const SizedBox(
                  height: defaultPadding * 1.5,
                              ),
                              Center(
                  child: SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(primaryColor),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              StadiumBorder()),
                        ),
                        child: Text("Add to Cart")),
                  ),
                              )
                            ]),
                ),
          ))
        ],
      ),
    );
  }
}

