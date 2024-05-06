import 'package:dilchat/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
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
                  boxShadow: [],
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

class FormApps extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  const FormApps({
    super.key,
    this.controller,
    this.hint,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              label!,
              style: white600.copyWith(fontSize: 16.0),
            ),
          ),
          TextFormField(
            cursorColor: Colors.white,
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
