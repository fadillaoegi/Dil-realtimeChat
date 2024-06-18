import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignInController extends GetxController {
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
