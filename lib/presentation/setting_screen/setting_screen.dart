import '../setting_screen/widgets/setting_item_widget.dart';
import 'controller/setting_controller.dart';
import 'models/setting_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/custom_button.dart';
import 'package:costazandroid/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:costazandroid/presentation/faq_screen/faq_screen.dart';


class SettingScreen extends GetWidget<SettingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                width: double.maxFinite,
                                child: Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 11, top: 3, right: 11, bottom: 3),
                                    decoration: AppDecoration.fillIndigo40002
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL35),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomButton(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(69),
                                              text: "lbl_back2".tr,
                                              margin: getMargin(top: 26),
                                              variant:
                                                  ButtonVariant.FillIndigo600,
                                              shape: ButtonShape.RoundedBorder8,
                                              fontStyle: ButtonFontStyle
                                                  .LexendMedium14,
                                              onTap: onBackPressed),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text("lbl_setting".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLexendMedium45)))
                                        ]))),

                            Container(
                                height: getVerticalSize(78),
                                width: getHorizontalSize(331),
                                margin: getMargin(top: 12),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 112, bottom: 15),
                                              child: Text("lbl_settings".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLexendMedium24))),

                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40), // adjust the value as per your need
                                          ),
                                          minimumSize: Size(600, 80), // adjust the size as per your need
                                          primary: Colors.grey[100], // adjust the color as per your need
                                        ),
                                        onPressed: () {
                                          navigateto();
                                        },
                                        child: Text(
                                          'Faq', textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 25, color: Colors.black),  // adjust the font size as per your need
                                      ))

                                    ])),

                                    SizedBox(
                                        height: getVerticalSize(12)),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40), // adjust the value as per your need
                                          ),
                                          minimumSize: Size(380, 80), // adjust the size as per your need
                                          primary: Colors.grey[100], // adjust the color as per your need
                                        ),
                                        onPressed: () {
                                          navigatetoabout();
                                        },
                                        child: Text(
                                          'About', textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 25, color: Colors.black),  // adjust the font size as per your need
                                        )),
                                    SizedBox(
                                        height: getVerticalSize(12)),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40), // adjust the value as per your need
                                        ),
                                        minimumSize: Size(350, 80), // adjust the size as per your need
                                        primary: Colors.grey[100], // adjust the color as per your need
                                      ),
                                      onPressed: () {

                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'App mode',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 25, color: Colors.black), // adjust the font size as per your need
                                          ),
                                          Switch(
                                            value: true, // set the initial value of the switch
                                            onChanged: (value) {
                                              // add your switch logic here
                                            },
                                          ),
                                        ],
                                      ),
                                    ),


                          ])))
                    ]))));
  }

  onBackPressed() {
    Get.back();
  }
  navigateto() {
    Get.toNamed(AppRoutes.faqScreen);
  }
  navigatetoabout() {
    Get.toNamed(AppRoutes.aboutScreen);
  }
}
