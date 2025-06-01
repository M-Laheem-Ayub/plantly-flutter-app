import 'package:flutter/material.dart';
import 'package:plantly_app/widgets/my_text.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.color = Colors.black87,
  });
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: MyText(
        text: title,
        size: 14,
        fWeight: FontWeight.w600,
        color: color,
        textAlign: TextAlign.start,
      ),
      onTap: onTap,
    );
  }
}
