import 'package:flutter/material.dart';

class CustomTextPadding extends StatelessWidget {
  const CustomTextPadding(
      {super.key,
      required this.h,
      required this.tytle,
      this.onTap,
      this.fontWeight});

  final double h;
  final String tytle;
  final void Function()? onTap;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          tytle,
          style: TextStyle(
              color: Colors.blue, fontSize: h * 0.025, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
