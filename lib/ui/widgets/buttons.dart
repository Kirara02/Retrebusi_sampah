import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 57,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: BorderSide(color: greenColor, width: 2),
          ),
        ),
        child: Text(
          title,
          style: greyTextStyle.copyWith(fontWeight: semiBold),
        ),
      ),
    );
  }
}


class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final Alignment? alignment;
  final TextStyle? style;
  const CustomTextButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 24,
    this.onPressed,
    this.alignment = Alignment.bottomLeft,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            alignment: alignment,
            child: Text(
              title,
              style: style!.copyWith(fontSize: 12, fontWeight: medium),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSelectedButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomSelectedButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 57,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: BorderSide(color: whiteColor, width: 2),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontWeight: semiBold),
        ),
      ),
    );
  }
}