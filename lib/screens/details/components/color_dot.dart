import 'package:e_commerce_flutter/constants.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isActive;
  final VoidCallback press;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        padding: EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          border:
              Border.all(color: isActive ? primaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: color,
          radius: 10,
        ),
      ),
    );
  }
}
