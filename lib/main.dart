import 'package:cars/view/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarHub());
}

class CarHub extends StatelessWidget {
  const CarHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
