import '../controller/select_class_controller.dart';
import 'package:get/get.dart';

class SelectClassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectClassController());
  }
}
