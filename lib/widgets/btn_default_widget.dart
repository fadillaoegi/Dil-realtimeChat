import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnApps extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final IconData? icon;
  final Color? color;
  final Color? fontColor;
  final double? marginHorizontal;
  final double? height;
  const BtnApps({
    super.key,
    this.text = "",
    this.onTap,
    this.marginHorizontal = 0,
    this.height = 0,
    this.icon = Icons.settings,
    this.color = Colors.white,
    this.fontColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: marginHorizontal!),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$text",
              style: GoogleFonts.poppins(
                color: fontColor,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              icon!,
              size: 20.0,
              color: fontColor,
            )
          ],
        ),
      ),
    );
  }
}
