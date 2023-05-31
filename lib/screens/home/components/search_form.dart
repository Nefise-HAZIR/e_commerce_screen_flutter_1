import 'package:e_commerce_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border:outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          hintText: "Search Items...",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(
                             Radius.circular(defaultBorderRadius),
                              ),
                         ),
                ),
              ),
              child: SvgPicture.asset("assets/icons/Filter.svg"),
            ),
          )
        ),
      )
    )
        );
  }
}

  const OutlineInputBorder outlineInputBorder =  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                    borderSide: BorderSide.none
                  );