import 'package:education_project/recurring/color_variations.dart';
import 'package:flutter/material.dart';

class ButtonType extends StatelessWidget {
  const ButtonType({
    super.key,
    required this.labeltext,
    required this.colortype,
    this.onPressed,
  });
  final String labeltext;
  final Color colortype;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: colortype,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        child: Padding(
          padding: EdgeInsets.only(
            top: 15,
            bottom: 15,
            left: 50,
            right: 50,
          ),
          child: Text(
            labeltext,
            style: TextStyle(
                color: ColorVariations.white,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ));
  }
}
