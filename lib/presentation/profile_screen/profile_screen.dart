import '../profile_screen/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/app_bar/appbar_image.dart';
import 'package:costazandroid/widgets/app_bar/custom_app_bar.dart';
import 'package:costazandroid/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
                          width: getHorizontalSize(150),
                          margin: getMargin(left: 8, top: 10, right: 9),
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: AppDecoration.gradientIndigo400Indigo200
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder35),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(20),
                                    title: Padding(
                                        padding: getPadding(left: 37,right:24),
                                        child: Text("lbl_profile".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style:
                                                AppStyle.txtLexendSemiBold24)),
                                   ),

                              ])),
                      SizedBox(height: 10),
                      Stack(
                          alignment:
                          Alignment.center,
                          children: [
                            Align(
                                alignment: Alignment
                                    .center,
                                child:
                                Stack(
                                    alignment:
                                    Alignment.center,
                                    children: [

                                      Align(
                                          alignment: Alignment
                                              .center,
                                          child: Container(
                                              height: getSize(104),
                                              width: getSize(104),
                                              child: CircularProgressIndicator(value: .78, strokeWidth: getHorizontalSize(4))))
                                    ])),

                            CustomImageView(
                                imagePath:
                                ImageConstant
                                    .img1212011,
                                height:
                                getVerticalSize(
                                    92),
                                width:
                                getHorizontalSize(
                                    89),
                                alignment: Alignment
                                    .center)
                          ]),

                      Padding(
                          padding: getPadding(top: 20),
                          child: Text(
                              "Noman Shoaib",
                              overflow:
                              TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtLexendSemiBold24Gray90001)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text(
                              "nomanshoaib32@gmail.com",
                              overflow:
                              TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtLexendRegular14)),
                      Expanded(
                          child: Container(
                              child: Padding(
                                  padding:
                                      getPadding(left: 8, right: 9, bottom: 41,top: 10),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [

                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      margin:
                                                          getMargin(top: 16),
                                                      padding: getPadding(
                                                          top: 16, bottom: 16),
                                                      decoration: AppDecoration
                                                          .outlineGray10002
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder17),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_basic_info"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtLexendSemiBold16)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            16),
                                                                child: Divider(
                                                                    color: ColorConstant
                                                                        .gray10002)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 14,
                                                                        right:
                                                                            16),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 3, bottom: 2),
                                                                              child: Text("lbl_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendMedium14)),
                                                                          Spacer(),
                                                                          Padding(
                                                                              padding: getPadding(top: 2, bottom: 3),
                                                                              child: Text("Noman Shoaib", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendSemiBold14Gray90001)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgLock,
                                                                              height: getSize(24),
                                                                              width: getSize(24),
                                                                              margin: getMargin(left: 8))
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 17,
                                                                        right:
                                                                            47),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_birthday"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14),
                                                                      Text(
                                                                          "31 August 1999",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14Gray90001)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 14,
                                                                        right:
                                                                            49,
                                                                        bottom:
                                                                            11),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_gender"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14),
                                                                      Text(
                                                                          "lbl_male"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14Gray90001)
                                                                    ]))
                                                          ]))),

                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      margin:
                                                      getMargin(top: 16),
                                                      padding: getPadding(
                                                          top: 16, bottom: 16),
                                                      decoration: AppDecoration
                                                          .outlineGray10002
                                                          .copyWith(
                                                          borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder17),
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    left:
                                                                    16),
                                                                child: Text(
                                                                    "Contact Info",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtLexendSemiBold16)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top:
                                                                    16),
                                                                child: Divider(
                                                                    color: ColorConstant
                                                                        .gray10002)),
                                                            Align(
                                                                alignment:
                                                                Alignment
                                                                    .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                        16,
                                                                        top: 14,
                                                                        right:
                                                                        16),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 3, bottom: 2),
                                                                              child: Text("Email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendMedium14)),
                                                                          Spacer(),
                                                                          Padding(
                                                                              padding: getPadding(top: 2, bottom: 3),
                                                                              child: Text("nomanshoaib32@gmail.com", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendSemiBold14Gray90001)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgLock,
                                                                              height: getSize(24),
                                                                              width: getSize(24),
                                                                              margin: getMargin(left: 8))
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    left:
                                                                    16,
                                                                    top: 17,
                                                                    right:
                                                                    47),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "Phone.no",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          AppStyle.txtLexendMedium14),
                                                                      Text(
                                                                          "032448697781",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          AppStyle.txtLexendMedium14Gray90001)
                                                                    ]))
                                                          ]))),



                                            ]),

                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "lbl_logout".tr,
                                            margin: getMargin(
                                                left: 12, top: 13, right: 12),
                                            onTap: navigatetologin),
                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "lbl_back".tr,
                                            margin: getMargin(
                                                left: 13, top: 0, right: 11),
                                            variant:
                                                ButtonVariant.OutlineIndigoA100,
                                            fontStyle: ButtonFontStyle
                                                .InterRegular12IndigoA100,
                                            onTap: onBackPressed)
                                      ]))))
                    ]))));
  }

  navigatetologin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onBackPressed() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
