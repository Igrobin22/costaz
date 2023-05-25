import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/data_template_screen/models/data_template_model.dart';

import '../../attendance_screen/controller/attendance_controller.dart';

class DataTemplateController extends GetxController {
  Rx<DataTemplateModel> dataTemplateModelObj = DataTemplateModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
