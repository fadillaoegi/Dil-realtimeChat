import 'package:get/get.dart';

class SignUpController extends GetxController {
  // NOTE: VARIABLE DECLARATION
  final obsecureText = true.obs;

  final count = 0.obs;
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

  void increment() => count.value++;
}
