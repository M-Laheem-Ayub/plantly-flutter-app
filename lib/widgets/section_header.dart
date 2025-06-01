import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/widgets/my_text.dart';

class SectionHeader extends StatelessWidget {
  SectionHeader({
    super.key,
    required this.title,
    required this.onTap,
    required this.screenWidth,
  });
  String title;
  VoidCallback? onTap;
  double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 35, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text: title,
            color: Colors.black.withOpacity(0.65),
            fWeight: FontWeight.bold,
            size: 16,
          ),
          GestureDetector(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: screenWidth * 0.14,
                height: 22,
                color: mainColor,
                child: Center(
                  child: MyText(
                    text: "More",
                    color: Colors.white,
                    size: 10,
                    fWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
