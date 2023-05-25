import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/schedule_for_today_screen/models/schedule_for_today_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../setup_schedule_screen/controller/setup_schedule_controller.dart';

class ScheduleForTodayController extends GetxController {
  final SetupScheduleController firstController = Get.find();
  Rx<ScheduleForTodayModel> scheduleForTodayModelObj = ScheduleForTodayModel().obs;


  @override
  void onReady() {



    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
