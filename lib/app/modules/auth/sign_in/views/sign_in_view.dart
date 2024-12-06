import 'package:dilchat/app/routes/app_pages.dart';
import 'package:dilchat/app/themes/colors.dart';
import 'package:dilchat/app/widgets/btn_default_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/lotties/login.json",
                height: 260,
              ),
              const SizedBox(
                height: 100,
              ),
              BtnApps(
                text: "Login with google",
                icon: Icons.login,
                color: ColorApps.primary,
                fontColor: Colors.white,
                marginHorizontal: 20.0,
                height: 50.0,
                onTap: () {
                  Get.offAndToNamed(Routes.home);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
