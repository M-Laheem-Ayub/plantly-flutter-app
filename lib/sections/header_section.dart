import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/helpers/screen_size.dart';
import 'package:plantly_app/widgets/my_text.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: Container(
            height: screenHeight * 0.16,
            color: mainColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: "Hi Laheem Ayub!",
                        color: Colors.white,
                        size: 23,
                        fWeight: FontWeight.bold,
                      ),
                      Image.asset("assets/images/logo.png", width: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.115,
            left: 20,
            right: 20,
          ),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: mainColor.withOpacity(0.3),
                  offset: const Offset(0, 5),
                  blurRadius: 15,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: (screenWidth - 36) * 0.75,
                    child: TextFormField(
                      textCapitalization: TextCapitalization.words,
                      cursorColor: Colors.black,
                      style: TextStyle(color: mainColor),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: mainColor.withOpacity(0.5)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Image.asset("assets/icons/search.png"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
