import '../controller/edit_schedule_controller.dart';
import 'package:get/get.dart';

class EditScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditScheduleController());
  }
}
