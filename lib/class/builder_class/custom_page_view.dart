import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h * 0.27,
      width: w,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        controller: PageController(viewportFraction: 0.950),
        itemBuilder: (context, index) {
          return Container(
            height: 27,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24),
            ),
          );
        },
      ),
    );
  }
}
