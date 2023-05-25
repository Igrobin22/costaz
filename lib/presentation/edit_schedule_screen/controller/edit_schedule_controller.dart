import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/edit_schedule_screen/models/edit_schedule_model.dart';

class EditScheduleController extends GetxController {
  Rx<EditScheduleModel> editScheduleModelObj = EditScheduleModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
