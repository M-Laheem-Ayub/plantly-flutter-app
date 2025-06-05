import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/helpers/screen_size.dart';

class DetailVeiwImage extends StatelessWidget {
  const DetailVeiwImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Column(
      children: [
        Container(
          height: screenHeight * 0.7,
          width: screenWidth * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              bottomLeft: Radius.circular(70),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
            boxShadow: [
              BoxShadow(
                color: mainColor.withValues(alpha: 0.3),
                offset: Offset(-2, 4),
                blurRadius: 150,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
