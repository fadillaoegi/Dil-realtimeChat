import 'package:get/get.dart';

class SignUpController extends GetxController {
  // NOTE: VARIABLE DECLARATION
  final obsecureText = true.obs;

  final count = 0.obs;
 

  // NOTE: FUNCTION OBSECURE
  seePassword() => obsecureText.value = !obsecureText.value;

  void increment() => count.value++;
}
