import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StateManage extends GetxController {
  var counter = 0.obs;
  increment() {
    counter++;
  }
}
