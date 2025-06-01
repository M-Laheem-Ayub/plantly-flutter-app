import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/models/plant_product.dart';
import 'package:plantly_app/sections/featured_plants_section.dart';
import 'package:plantly_app/sections/header_section.dart';
import 'package:plantly_app/sections/recommended_plants_section.dart';
import 'package:plantly_app/widgets/custom_drawer.dart';
import 'package:plantly_app/widgets/home_app_bar.dart';
import 'package:plantly_app/widgets/home_bottom_navigation_bar.dart';
import 'package:plantly_app/widgets/my_text.dart';
import 'package:plantly_app/widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = ScreenSize.width(context);
    final double screenHeight = ScreenSize.height(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: HomeAppBar(),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSection(),
              SectionHeader(
                title: "Recomended",
                onTap: () {
                  print("More Recomended Plants");
                },
                screenWidth: screenWidth,
              ),
              RecommendedPlantsSection(),
              SectionHeader(
                title: "Featured Plants",
                onTap: () {
                  print("More features Plants");
                },
                screenWidth: screenWidth,
              ),
              FeaturedPlantsSection(),
              const SizedBox(height: 20),
            ],
          ),
        ),
        bottomNavigationBar: HomeBottomNavigationBar(),
      ),
    );
  }
}
