import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/edit_schedule_two_screen/models/edit_schedule_two_model.dart';
import 'package:flutter/material.dart';

class EditScheduleTwoController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  TextEditingController inputThreeController = TextEditingController();

  Rx<EditScheduleTwoModel> editScheduleTwoModelObj = EditScheduleTwoModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputOneController.dispose();
    inputTwoController.dispose();
    inputThreeController.dispose();
  }
}
