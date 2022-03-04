import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottom extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomBottom({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)),
        ),
        child: Text(
          'Get Started',
          style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
        ),
      ),
    );
  }
}
