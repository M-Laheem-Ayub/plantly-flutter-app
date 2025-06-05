import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.iconPath});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: mainColor.withValues(alpha: 0.4),
              offset: Offset(7, 7),
              blurRadius: 15,
            ),
          ],
        ),
        width: 50,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(iconPath),
        ),
      ),
    );
  }
}
