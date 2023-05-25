import 'package:intl/intl.dart';
import 'dart:core';
import '../schedule_for_today_screen/widgets/listgrouptwo_item_widget.dart';
import 'controller/schedule_for_today_controller.dart';
import 'models/listgrouptwo_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ScheduleForTodayScreen extends GetWidget<ScheduleForTodayController> {
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
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 91, top: 28, right: 91, bottom: 28),
                              decoration: AppDecoration
                                  .gradientIndigoA20001Indigo40001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderBL35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImg1,
                                        height: getVerticalSize(49),
                                        width: getHorizontalSize(50),
                                        margin: getMargin(left: 61)),
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("lbl_schedule".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLexendMedium38)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 14),
                                            child: Text("lbl_for_today".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtLexendMedium20)))
                                  ]))),


                      Expanded(
                        child: Obx(() {
                          DateTime now = DateTime.now();
                          final currentDay = DateFormat('EEEE').format(now);
                          final filteredItems = controller.firstController.classes.value
                              .where((item) => item.numbers.contains(currentDay))
                              .toList();
                          return ListView.builder(
                            itemCount: filteredItems.length,
                            itemBuilder: ((context, index) {
                              return ListTile(
                                title: InkWell(
                                  onTap: () => Get.toNamed(
                                    AppRoutes.ClassDetailes,
                                    arguments: index,
                                  ),
                                  child: Text(
                                    filteredItems[index].classname!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                  filteredItems[index].subject!,
                                  style: TextStyle(fontSize: 16),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete, color: Colors.red),
                                  onPressed: () =>
                                      controller.firstController.removeClasses(index),
                                ),
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                tileColor: Colors.white,
                                selectedTileColor: Colors.grey.shade100,
                              );
                            }),
                          );
                        }),
                      ),



                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(36),
                text: "lbl_back".tr,
                margin: getMargin(left: 21, right: 20, bottom: 58),
                onTap: onBackPressed)));
  }

  onBackPressed() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
