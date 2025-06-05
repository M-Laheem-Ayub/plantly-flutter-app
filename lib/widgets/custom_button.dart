import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/widgets/my_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPress,
    this.color = Colors.white,
    this.titleColor = Colors.black,
    required this.borderRadius,
  });
  final Function? onPress;
  final String title;
  final Color color;
  final Color titleColor;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        fixedSize: Size(screenWidth * 0.5, screenHeight * 0.1),
        backgroundColor: color,
      ),
      onPressed: () {
        onPress;
      },
      child: MyText(
        text: title,
        color: titleColor,
        fWeight: FontWeight.bold,
        size: 16,
      ),
    );
  }
}
