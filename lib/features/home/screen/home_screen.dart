import 'package:app/app/app_image_path.dart';
import 'package:app/features/home/widget/category_item.dart';
import 'package:app/features/home/widget/custom_avater.dart';
import 'package:app/features/home/widget/customtextfiled.dart';
import 'package:app/features/home/widget/home_carousel_slider.dart';
import 'package:app/features/home/widget/selection_header.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String home = '/home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 28),
              Customtextfiled(text: "search", icons: Icons.search),
              SizedBox(height: 16),
              HomeCarouselSlider(),
              SizedBox(height: 8),
              SelectionHeader(text: 'Categorey', ontap: () {}),
              SizedBox(height: 10),
              _buildCategoriesSection(),
            ],
          ),
        ),
      ),
    );
  }

 Widget _buildCategoriesSection() {
    return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                ],
              ),
            );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Image.asset(AppImagePath.logo, height: 859),
      actions: [
        CustomAvater(icons: Icons.person, ontap: () {}),
        SizedBox(width: 10),
        CustomAvater(icons: Icons.call, ontap: () {}),
        SizedBox(width: 10),
        CustomAvater(icons: Icons.notification_add, ontap: () {}),
      ],
    );
  }
}
