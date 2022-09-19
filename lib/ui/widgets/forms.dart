import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final bool obscureText;
  CustomFormField({
    Key? key,
    required this.title,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 2,
          color: whiteColor,

        ),
        color: greenColor,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide.none
          ),
          contentPadding: const EdgeInsets.all(20),
          hintText: title,
          hintStyle: whiteTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
