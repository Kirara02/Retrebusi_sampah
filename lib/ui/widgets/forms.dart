import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';

class CustomFormFieldLogin extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final bool obscureText;
  const CustomFormFieldLogin({
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
              borderSide: BorderSide.none),
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

class CustomFormField extends StatelessWidget {
  final String hint;
  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? preficIcon;
  const CustomFormField({
    Key? key,
    this.hint = '',
    this.label = '',
    this.controller,
    this.obscureText = false,
    this.preficIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: greyTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon:preficIcon ?? null,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: greyColor, width: 1)),
              contentPadding: const EdgeInsets.all(8),
              hintText: hint,
              hintStyle: greyTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPasswordFormField extends StatefulWidget {
  final String hint;
  final String label;
  final TextEditingController? controller;
  const CustomPasswordFormField({
    Key? key,
    this.hint = '',
    this.label = '',
    this.controller,
  }) : super(key: key);

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: greyTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: widget.controller,
            obscureText: _obscureText,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: greyColor, width: 1)),
              contentPadding: const EdgeInsets.all(8),
              hintText: widget.hint,
              hintStyle: greyTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
