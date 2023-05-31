import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback pressSeeAll;
  const SectionTitle({
    Key? key, required this.title, required this.pressSeeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
            color: Colors.black,
          ),
        ),
        TextButton(
            onPressed: () => pressSeeAll(),
            child: const Text(
              "See All",
              style: TextStyle(color: Colors.black54),
            ))
      ],
    );
  }
}
