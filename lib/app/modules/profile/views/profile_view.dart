import 'package:dilchat/app/themes/colors.dart';
import 'package:dilchat/app/themes/fonts.dart';
import 'package:dilchat/app/widgets/btn_default_widget.dart';
import 'package:dilchat/app/widgets/list_menu_item_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: primary500,
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: ColorApps.primary,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        height: Get.height,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120.0,
              width: 120.0,
              child: CircleAvatar(
                backgroundColor: ColorApps.primary2,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "UserName",
              style: black500.copyWith(fontSize: 14.0),
            ),
            Text(
              "EmailExample@gmail.com",
              style: black500.copyWith(fontSize: 14.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  ListMenuItem(
                    onTap: () {},
                    text: "Update Status",
                    icon: Icons.person,
                  ),
                  ListMenuItem(
                    onTap: () {},
                    text: "Edit Profile",
                    icon: Icons.settings,
                  ),
                  ListMenuItem(
                    onTap: () {},
                    text: "Change Theme",
                    icon: Icons.brightness_medium_sharp,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BtnApps(
                text: "Logout",
                color: Colors.redAccent,
                icon: Icons.logout,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
