import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/setting_screen/models/setting_model.dart';
import 'package:flutter/material.dart';

class SettingController extends GetxController {
  TextEditingController groupFiftyOneController = TextEditingController();

  TextEditingController feedbackbuttonController = TextEditingController();

  TextEditingController aboutbuttonController = TextEditingController();

  Rx<SettingModel> settingModelObj = SettingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyOneController.dispose();
    feedbackbuttonController.dispose();
    aboutbuttonController.dispose();
  }
}
