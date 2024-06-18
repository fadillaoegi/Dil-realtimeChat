import 'package:dilchat/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BtnDefault extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  const BtnDefault({
    super.key,
    this.text = "",
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: Get.width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(),
        child: Text(
          "Sign In",
          style: primary600.copyWith(fontSize: 14.0),
        ),
      ),
    );
  }
}
