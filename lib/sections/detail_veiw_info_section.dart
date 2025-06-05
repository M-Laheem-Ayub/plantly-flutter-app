import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/models/plant_product.dart';
import 'package:plantly_app/widgets/my_text.dart';
import 'package:plantly_app/widgets/section_header.dart' as plant;

class DetailVeiwInfoSection extends StatelessWidget {
  const DetailVeiwInfoSection({super.key, required this.plant});
  final PlantProduct plant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(text: plant.name, fWeight: FontWeight.bold, size: 42),
              MyText(text: "\$${plant.price}", color: mainColor, size: 26),
            ],
          ),
          MyText(
            text: plant.country,
            color: mainColor.withValues(alpha: 0.5),
            size: 22,
          ),
        ],
      ),
    );
  }
}
