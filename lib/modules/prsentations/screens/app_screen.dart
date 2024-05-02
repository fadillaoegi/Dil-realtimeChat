import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtimechat/configs/screen_config.dart';
import 'package:realtimechat/routes/routes.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteScreen.home,
      getPages: getPages,
    );
  }
}
