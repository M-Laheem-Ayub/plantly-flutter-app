import 'package:flutter/material.dart';
import 'package:plantly_app/helpers/app_colors.dart';
import 'package:plantly_app/widgets/custom_drawer_item.dart';
import 'package:plantly_app/widgets/my_text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: mainColor),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/logo.png"),
                ),
                SizedBox(width: 12),
                MyText(
                  text: "Hi Laheem 👋",
                  color: Colors.white,
                  size: 18,
                  fWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          CustomDrawerItem(
            icon: Icons.home,
            title: "Home",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          CustomDrawerItem(
            icon: Icons.favorite_border,
            title: "Favorites",
            onTap: () {},
          ),
          CustomDrawerItem(
            icon: Icons.settings,
            title: "Settings",
            onTap: () {},
          ),
          CustomDrawerItem(
            icon: Icons.info_outline,
            title: "About",
            onTap: () {},
          ),
          Spacer(),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomDrawerItem(
              icon: Icons.logout,
              title: "Logout",
              onTap: () {},
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
