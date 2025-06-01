import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/flower.png")),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/heart-icon.png")),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/user-icon.png")),
          label: "",
        ),
      ],
    );
  }
}
