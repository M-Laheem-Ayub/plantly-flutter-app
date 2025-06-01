import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          print("menu");
          Scaffold.of(context).openDrawer();
        },
        icon: Image.asset("assets/icons/menu.png"),
      ),
      backgroundColor: mainColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
