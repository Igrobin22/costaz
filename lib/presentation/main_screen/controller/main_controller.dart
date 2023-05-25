import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/main_screen/models/main_model.dart';

class MainController extends GetxController {
  Rx<MainModel> mainModelObj = MainModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
