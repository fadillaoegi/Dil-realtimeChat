import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppMainController extends GetxController {
  final count = 0.obs;



  void increment() => count.value++;
}
