import 'package:education_project/recurring/color_variations.dart';
import 'package:flutter/material.dart';

class TextFontStyles {
  static const TextStyle heading = TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, color: ColorVariations.white);

  static const TextStyle body = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: ColorVariations.white);
}

class HeadingText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign align;

  const HeadingText({
    Key? key,
    required this.text,
    this.style = TextFontStyles.heading,
    this.align = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: align,
    );
  }
}
