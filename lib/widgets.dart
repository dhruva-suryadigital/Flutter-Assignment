import 'package:flutter/material.dart';
import 'color.dart' as colors;

class CustomContainer extends StatelessWidget {
  final String text;
  final int shade;

  const CustomContainer({
    Key? key,
    required this.text,
    required this.shade,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.primaryColor(shade),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(5),
      height: 100,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
