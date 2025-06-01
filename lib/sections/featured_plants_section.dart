import 'package:flutter/material.dart';
import 'package:plantly_app/data/featured_plants.dart';
import 'package:plantly_app/helpers/screen_size.dart';

class FeaturedPlantsSection extends StatelessWidget {
  const FeaturedPlantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    return SizedBox(
      width: double.infinity,
      height: screenHeight * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featurePlants.length,
        itemBuilder: (context, index) {
          final plant = featurePlants[index];
          return Container(
            margin: EdgeInsets.only(
              left: 20,
              right: index == featurePlants.length - 1 ? 20 : 0,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: screenWidth * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(plant),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
