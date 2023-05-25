import '../../setup_schedule_screen/controller/setup_schedule_controller.dart';
import '../controller/attendance_controller.dart';
import 'package:get/get.dart';

class AttendanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceController());
    Get.lazyPut(() => SetupScheduleController());
  }
}
