import 'controller/schedule_controller.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';

class ScheduleScreen extends GetWidget<SetupScheduleController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding: getPadding(
                                      left: 10, right: 10, bottom: 65),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.img6274011,
                                            height: getVerticalSize(226),
                                            width: getHorizontalSize(340),
                                            margin: getMargin(top: 163)),
                                        Padding(
                                            padding: getPadding(top: 64),
                                            child: Text(
                                                "msg_schedule_your_class".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold28)),
                                        Container(
                                            width: getHorizontalSize(219),
                                            margin: getMargin(top: 20),
                                            child: Text(
                                                "msg_manage_your_class".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterSemiBold16)),
                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "lbl_create_schedule".tr,
                                            margin: getMargin(
                                                left: 6, top: 82, right: 15),
                                            onTap: navigatetosetupschedule),
                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "lbl_skip".tr,
                                            margin: getMargin(
                                                left: 6, top: 15, right: 15),
                                            variant:
                                                ButtonVariant.OutlineIndigoA100,
                                            fontStyle: ButtonFontStyle
                                                .InterRegular12IndigoA100,
                                            onTap: navigatetomainscreen)
                                      ]))))
                    ]))));
  }

  navigatetosetupschedule() {
    Get.toNamed(AppRoutes.setupScheduleScreen);
  }

  navigatetomainscreen() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
