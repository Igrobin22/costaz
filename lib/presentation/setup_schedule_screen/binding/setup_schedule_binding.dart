import '../../schedule_for_today_screen/controller/schedule_for_today_controller.dart';
import '../controller/setup_schedule_controller.dart';
import 'package:get/get.dart';

class SetupScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetupScheduleController());
  }
}
