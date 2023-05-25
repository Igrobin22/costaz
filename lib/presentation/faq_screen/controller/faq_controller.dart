import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/faq_screen/models/faq_model.dart';
import 'package:flutter/material.dart';

class FaqController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  TextEditingController uploadingStudentController = TextEditingController();

  TextEditingController setupScheduleController = TextEditingController();

  TextEditingController markAttendanceController = TextEditingController();

  TextEditingController updateScheduleController = TextEditingController();

  TextEditingController deleteScheduleController = TextEditingController();

  Rx<FaqModel> faqModelObj = FaqModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
    uploadingStudentController.dispose();
    setupScheduleController.dispose();
    markAttendanceController.dispose();
    updateScheduleController.dispose();
    deleteScheduleController.dispose();
  }
}
