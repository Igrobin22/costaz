import 'controller/faq_controller.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/app_bar/appbar_image.dart';
import 'package:costazandroid/widgets/app_bar/custom_app_bar.dart';
import 'package:costazandroid/widgets/custom_search_view.dart';
import 'package:costazandroid/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FaqScreen extends GetWidget<FaqController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.indigoA200,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  170,
                ),
                width: getHorizontalSize(
                  304,
                ),
                margin: getMargin(
                  left: 6,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        118,
                      ),
                      title: Container(
                        height: getVerticalSize(
                          118,
                        ),
                        width: getHorizontalSize(
                          164,
                        ),
                        margin: getMargin(
                          left: 16,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            AppbarImage(
                              height: getVerticalSize(
                                118,
                              ),
                              width: getHorizontalSize(
                                164,
                              ),
                              imagePath: ImageConstant.imgCoztazw031118x164,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 19,
                                  top: 73,
                                  right: 58,
                                  bottom: 25,
                                ),
                                child: Text(
                                  "lbl_help_center".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold15WhiteA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CustomSearchView(
                        width: getHorizontalSize(
                          284,
                        ),
                        focusNode: FocusNode(),
                        controller: controller.searchbarController,
                        hintText: "lbl_search".tr,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.uploadingStudentController,
                hintText: "msg_uploading_student".tr,
                margin: getMargin(
                  left: 5,
                  top: 42,
                  right: 4,
                ),
                shape: TextFormFieldShape.RoundedBorder16,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.setupScheduleController,
                hintText: "lbl_setup_schedule".tr,
                margin: getMargin(
                  left: 6,
                  top: 15,
                  right: 3,
                ),
                shape: TextFormFieldShape.RoundedBorder16,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.markAttendanceController,
                hintText: "lbl_mark_attendance".tr,
                margin: getMargin(
                  left: 7,
                  top: 15,
                  right: 2,
                ),
                shape: TextFormFieldShape.RoundedBorder16,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.updateScheduleController,
                hintText: "lbl_update_schedule".tr,
                margin: getMargin(
                  left: 8,
                  top: 15,
                  right: 1,
                ),
                shape: TextFormFieldShape.RoundedBorder16,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.deleteScheduleController,
                hintText: "lbl_delete_schedule".tr,
                margin: getMargin(
                  left: 9,
                  top: 15,
                  bottom: 5,
                ),
                shape: TextFormFieldShape.RoundedBorder16,
                textInputAction: TextInputAction.done,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
