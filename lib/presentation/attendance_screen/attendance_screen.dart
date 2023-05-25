import 'controller/attendance_controller.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/custom_button.dart';
import 'package:costazandroid/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends GetWidget<AttendanceController> {
  final index = Get.arguments as int;

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(229),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 172),
                                    padding:
                                    getPadding(top: 14, bottom: 14),
                                    decoration:
                                    AppDecoration.outlineGray600,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "lbl_students".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanBold22
                                              .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(
                                              0.1,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "lbl_attendance".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanBold22
                                              .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(
                                              0.1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              padding: getPadding(
                                  left: 20, top: 23, right: 20, bottom: 23),
                              decoration: AppDecoration
                                  .gradientIndigoA20001Indigo400011
                                  .copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .customBorderBL35),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7),
                                    child: Text(
                                      controller.firstController.classes
                                          .value[index].classname!,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtLexendSemiBold54,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                        left: 7, top: 2, bottom: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text(
                                            controller
                                                .firstController
                                                .classes
                                                .value[index]
                                                .subject!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtLexendSemiBold20,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(bottom: 1,),
                                          child: Text(" x"
                                            ,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtLexendSemiBold20,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          getPadding(left: 3, top: 1),
                                          child: Text(
                                            controller
                                                .firstController
                                                .classes
                                                .value[index]
                                                .department!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtLexendSemiBold20,
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                          getPadding(top: 6, bottom: 2),
                                          child: Text(
                                            controller
                                                .firstController
                                                .classes
                                                .value[index]
                                                .roomno!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtLexendSemiBold13WhiteA70099,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),     // The Top
                    Divider(
                      color: ColorConstant.indigo40001,
                    ),       // Divider
                    FutureBuilder<bool>(
                      future: super.controller.loadAll(),
                      builder: (context, snapshot) => !snapshot.hasData
                          ? Center(
                        child: CircularProgressIndicator(),
                      )
                          : SizedBox(
                        height: 450,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: nm.length,
                          itemBuilder: (context, index) => Padding(
                            padding: getPadding(
                                left: 37, top: index == 0 ? 7 : 6),
                            child: Row(
                              children: [
                                Container(
                                  width: getHorizontalSize(96),
                                  child: Text(
                                    nm[index],
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle
                                        .txtRobotoMedium14
                                        .copyWith(
                                      letterSpacing:
                                      getHorizontalSize(0.1),
                                    ),
                                  ),
                                ),    // Name
                                Obx(
                                      () => CustomCheckbox(
                                    text: controller.checkboxes[index]
                                        .value ==
                                        true
                                        ? "lbl_present".tr
                                        : "lbl_absent".tr,
                                    iconSize: getHorizontalSize(18),
                                    value: controller
                                        .checkboxes[index].value ==
                                        true,
                                    margin: getMargin(
                                        left: 91,
                                        top: 8,
                                        bottom: 8),
                                    variant:
                                    CheckboxVariant.FillWhiteA700,
                                    fontStyle:
                                    CheckboxFontStyle.LexendRegular17,
                                    onChange: (value) =>
                                    controller.checkboxes[index]
                                        .value = value,
                                  ),
                                ),          // Checkbox
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),      // List of Students
                    Padding(
                      padding: getPadding(top: 10, left: 150),
                      child: Obx(
                            () => CustomCheckbox(
                          text: controller.checkboxes
                              .every((value) => value.isTrue)
                              ? "All Present"
                              : "All Absent",
                          iconSize: getHorizontalSize(18),
                          value: controller.checkboxes
                              .every((value) => value.isTrue),
                          margin: getMargin(left: 59, top: 8, bottom: 8),
                          variant: CheckboxVariant.FillWhiteA700,
                          fontStyle: CheckboxFontStyle.LexendRegular17,
                          onChange: (value) {
                            for (var i = 0;
                            i < controller.checkboxes.length;
                            i++) {
                              controller.checkboxes[i].value = value;
                            }
                          },
                        ),
                      ),
                    ),       // All Present
                    CustomButton(
                        height: getVerticalSize(36),
                        text: "lbl_next".tr,
                        margin: getMargin(left: 21, top: 20, right: 20),
                        onTap: navigatetoverification),  // Next
                    CustomButton(
                      height: getVerticalSize(36),
                      text: "lbl_back".tr,
                      margin: getMargin(left: 20, top: 14, right: 21),
                      variant: ButtonVariant.OutlineIndigoA100,
                      fontStyle: ButtonFontStyle.InterRegular12IndigoA100,
                      onTap: () => Get.toNamed(
                          AppRoutes.selectClassScreen),
                    ),  // Back
                    Padding(
                      padding: getPadding(top: 6),
                      child: Divider(
                        color: ColorConstant.indigo40001,
                      ),
                    ),       // Divider
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  navigatetoverification() {
    Get.toNamed(AppRoutes.attendanceOverallResultScreen,
        arguments: [controller.checkboxes]);
  }

  navigateto() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}

