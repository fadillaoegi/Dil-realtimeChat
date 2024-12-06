import 'package:dilchat/app/routes/app_pages.dart';
import 'package:dilchat/app/themes/colors.dart';
import 'package:dilchat/app/themes/fonts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorApps.secondary,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "DilChat",
              style: primary700.copyWith(fontSize: 24.0),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.profile);
              },
              child: const Icon(
                Icons.person,
                size: 30.0,
                color: ColorApps.primary,
              ),
            )
          ],
        ),
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                "Name",
                style: white600,
              ),
              subtitle: Text(
                "hint last chat",
                style: white400,
              ),
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
              trailing: SizedBox(
                height: 24.0,
                width: 24.0,
                child: CircleAvatar(
                  backgroundColor: ColorApps.primary,
                  child: Center(
                    child: Text(
                      "$index",
                      style: black400.copyWith(fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              onTap: () {
                // Get.toNamed(RouteScreen.chatRoom);
              },
            );
          },
        ),
      ),
    );
  }
}
