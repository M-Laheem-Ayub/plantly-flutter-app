import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/widgets/custom_icon_button.dart';

class DetailViewScreen extends StatelessWidget {
  const DetailViewScreen({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenWidth * 0.35, height: 20),
                    Transform.translate(
                      offset: Offset(-30, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset("assets/icons/back_arrow.png"),
                      ),
                    ),
                    SizedBox(height: 60),

                    CustomIconButton(iconPath: "assets/icons/sun.png"),
                    SizedBox(height: 40),
                    CustomIconButton(iconPath: "assets/icons/icon_2.png"),
                    SizedBox(height: 40),

                    CustomIconButton(iconPath: "assets/icons/icon_3.png"),
                    SizedBox(height: 40),

                    CustomIconButton(iconPath: "assets/icons/icon_4.png"),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft: Radius.circular(70),
                      ),
                      child: Image.asset(
                        imagePath,
                        height: screenHeight * 0.75,
                        width: screenWidth * 0.65,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
