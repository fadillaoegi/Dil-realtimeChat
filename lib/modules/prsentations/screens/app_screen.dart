import 'package:dilchat/configs/screen_config.dart';
import 'package:dilchat/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteScreen.signIn,
      getPages: getPages,
    );
  }
}
