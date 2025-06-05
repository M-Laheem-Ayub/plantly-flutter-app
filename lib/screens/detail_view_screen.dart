import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/models/plant_product.dart';
import 'package:plantly_app/sections/detail_veiw_info_section.dart';
import 'package:plantly_app/widgets/custom_button.dart';
import 'package:plantly_app/widgets/detail_veiw_image.dart';
import 'package:plantly_app/widgets/detail_view_icons_list.dart';

class DetailViewScreen extends StatelessWidget {
  const DetailViewScreen({super.key, required this.plant});
  final PlantProduct plant;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailViewIconsList(),
                DetailVeiwImage(imagePath: plant.imagePath),
              ],
            ),
            const SizedBox(height: 20),
            DetailVeiwInfoSection(plant: plant),
            Spacer(),
            Row(
              children: [
                CustomButton(
                  title: "Buy Now",
                  titleColor: Colors.white,
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                  ),
                ),
                CustomButton(
                  title: "Description",
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
