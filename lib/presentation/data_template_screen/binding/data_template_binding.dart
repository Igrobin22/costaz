import '../../attendance_screen/controller/attendance_controller.dart';
import '../../schedule_for_today_screen/controller/schedule_for_today_controller.dart';
import '../controller/data_template_controller.dart';
import 'package:get/get.dart';

class DataTemplateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataTemplateController());
    Get.lazyPut(()=>ScheduleForTodayController());
  }
}
