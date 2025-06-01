import 'package:flutter/material.dart';
import 'package:plantly_app/data/recomended_plants_products.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/widgets/my_text.dart';

class RecommendedPlantsSection extends StatelessWidget {
  const RecommendedPlantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: mainColor.withValues(alpha: 0.1),
            offset: const Offset(0, 18),
            blurRadius: 15,
          ),
        ],
      ),
      width: double.infinity,
      height: screenHeight * 0.38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plantProducts.length,
        itemBuilder: (context, index) {
          final plant = plantProducts[index];
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: mainColor.withValues(alpha: 0.15),
                  offset: const Offset(0, 180),
                  blurRadius: 50,
                ),
              ],
            ),
            width: screenWidth * 0.45,
            margin: EdgeInsets.only(
              left: 15,
              right: index == plantProducts.length - 1 ? 15 : 0,
            ),
            child: Card(
              color: Colors.white,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    plant.imagePath,
                    fit: BoxFit.cover,
                    width: screenWidth * 0.45,
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: plant.name.toUpperCase(),
                              fWeight: FontWeight.bold,
                            ),
                            MyText(
                              text: "\$${plant.price}",
                              fWeight: FontWeight.bold,
                              color: mainColor,
                              size: 13,
                            ),
                          ],
                        ),
                        MyText(
                          text: plant.country.toUpperCase(),
                          color: mainColor.withOpacity(0.8),
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
