// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class SignInController extends GetxController {
  // NOTE: VARIABLE DECLARATION
  final obsecureText = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // NOTE: FUNCTION OBSECURE
  seePassword() => obsecureText.value = !obsecureText.value;
}
