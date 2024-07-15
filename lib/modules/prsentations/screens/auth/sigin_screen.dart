import 'package:dilchat/modules/prsentations/controllers/signin_controller.dart';
import 'package:dilchat/routes/routes.dart';
import 'package:dilchat/themes/colors.dart';
import 'package:dilchat/widgets/btn_default_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final signInC = Get.put(SignInController());
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
                  Get.offAndToNamed(RouteScreen.home);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
