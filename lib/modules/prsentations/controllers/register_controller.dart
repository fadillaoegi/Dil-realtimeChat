import 'package:get/get.dart';

class SignUpController extends GetxController {
  // NOTE: VARIABLE DECLARATION
  final obsecureText = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // NOTE: FUNCTION OBSECURE
  seePassword() {
    obsecureText.value = !obsecureText.value;
  }
}
