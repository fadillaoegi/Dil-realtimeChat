import 'package:dilchat/modules/prsentations/controllers/signin_controller.dart';
import 'package:dilchat/themes/fonts.dart';
import 'package:dilchat/widgets/form_apps_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signInC = Get.put(SignInController());
    return Obx(
      () => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Get.width / 1.2,
                  height: Get.height / 1.9,
                  decoration: BoxDecoration(
                      boxShadow: const [],
                      color: Colors.blueAccent,
                      // color: ColorApps.primary,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Text(
                          "Sign In",
                          style: white500.copyWith(fontSize: 34.0),
                        ),
                      ),
                      const FormApps(
                        label: "Email",
                        hint: "example@gmail.com",
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      FormApps(
                        label: "Password",
                        obscureText: signInC.obsecureText.value,
                        hint: "",
                        suffixActive: true,
                        onTap: signInC.seePassword,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(),
                          child: const Text("Sign In"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
