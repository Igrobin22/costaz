import '../controller/edit_schedule_two_controller.dart';
import 'package:get/get.dart';

class EditScheduleTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditScheduleTwoController());
  }
}
