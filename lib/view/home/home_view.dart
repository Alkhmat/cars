import 'package:cars/class/builder_class/custom_page_view.dart';
import 'package:cars/class/text_class/custom_text_class.dart';
import 'package:cars/pages/car-categories/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'CarHub',
                  style: GoogleFonts.seymourOne(
                    textStyle:
                        TextStyle(color: Colors.white, fontSize: h * 0.035),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              CustomPageView(h: h, w: w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextPadding(
                    h: h,
                    tytle: 'See all',
                  ),
                  CustomTextPadding(
                    h: h,
                    tytle: 'Categories',
                    fontWeight: FontWeight.bold,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CarCategories(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
