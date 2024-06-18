
import 'package:dilchat/widgets/form_apps_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 400.0,
              decoration: BoxDecoration(
                  boxShadow: const [],
                  color: Colors.blueAccent,
                  // color: ColorApps.primary,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FormApps(
                    hint: "hint",
                    label: "label",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const FormApps(
                    hint: "hint",
                    label: "label",
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
                      child: const Text("data"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


