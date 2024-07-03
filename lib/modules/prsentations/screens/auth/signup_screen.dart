import 'package:dilchat/modules/prsentations/controllers/signup_controller.dart';
import 'package:dilchat/routes/routes.dart';
import 'package:dilchat/themes/colors.dart';
import 'package:dilchat/themes/fonts.dart';
import 'package:dilchat/widgets/btn_default_widget.dart';
import 'package:dilchat/widgets/form_apps_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpC = Get.put(SignUpController());
    return Obx(
      () => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            color: ColorApps.secondary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Get.width / 1.2,
                  height: Get.height / 1.9,
                  decoration: BoxDecoration(
                      color: ColorApps.primary,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          "Sign Up",
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
                        obscureText: signUpC.obsecureText.value,
                        hint: "",
                        suffixActive: true,
                        onTap: signUpC.seePassword,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      BtnApps(
                        text: "Sign Up",
                        onTap: () {},
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sudah Punya Akun ?",
                            style: white400.copyWith(fontSize: 14.0),
                          ),
                          TextButton(
                              onPressed: () => Get.toNamed(RouteScreen.signIn),
                              child: Text(
                                "Sign In",
                                style: black500.copyWith(fontSize: 12.0),
                              ))
                        ],
                      )
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
