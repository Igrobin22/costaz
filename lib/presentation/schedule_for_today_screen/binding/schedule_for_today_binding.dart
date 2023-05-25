import '../controller/schedule_for_today_controller.dart';
import 'package:get/get.dart';

class ScheduleForTodayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleForTodayController());
  }
}
