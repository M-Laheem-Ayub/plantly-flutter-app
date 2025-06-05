import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/widgets/custom_icon_button.dart';

class DetailViewIconsList extends StatelessWidget {
  const DetailViewIconsList({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: screenWidth * 0.3, height: 20),
        Transform.translate(
          offset: Offset(-15, 0),
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
    );
  }
}
