import 'package:dilchat/routes/routes.dart';
import 'package:dilchat/themes/colors.dart';
import 'package:dilchat/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(RouteScreen.signIn),
    );
    return Scaffold(
      backgroundColor: ColorApps.primary2,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/lotties/logoDilchat.json",
              height: 160,
              width: 160,
            ),
            Text(
              "DilChat",
              style: white600.copyWith(fontSize: 24.0),
            )
          ],
        ),
      ),
    );
  }
}
