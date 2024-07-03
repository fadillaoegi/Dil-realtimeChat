import 'package:dilchat/themes/colors.dart';
import 'package:dilchat/themes/fonts.dart';
import 'package:flutter/material.dart';

class ListMenuItem extends StatelessWidget {
  const ListMenuItem(
      {super.key,
      this.onTap,
      this.icon = Icons.settings,
      this.text = "",
      this.iconColor = ColorApps.primary});

  final VoidCallback? onTap;
  final IconData? icon;
  final String? text;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              icon,
              // Icons.home,
              color: iconColor,
            ),
            title: Text(
              "$text",
              style: primary400.copyWith(fontSize: 14.0),
            ),
            trailing: const Icon(
              Icons.arrow_circle_right_outlined,
              color: ColorApps.primary,
            ),
          ),
          Divider(
            color: iconColor  ,
            thickness: 1,
            indent: 12,
            endIndent: 12,
          ),
        ],
      ),
    );
  }
}
