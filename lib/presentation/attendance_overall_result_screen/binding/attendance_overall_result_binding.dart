import '../controller/attendance_overall_result_controller.dart';
import 'package:get/get.dart';

class AttendanceOverallResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceOverallResultController());
  }
}
