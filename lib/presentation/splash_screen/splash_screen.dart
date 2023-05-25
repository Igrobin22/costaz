import 'controller/splash_controller.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(bottom: 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder94),
                          child: Container(
                              height: getSize(188.00),
                              width: getSize(188.00),
                              padding: getPadding(
                                  left: 4, top: 10, right: 4, bottom: 10),
                              decoration: AppDecoration.gradientIndigoA100Indigo400
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.circleBorder94),
                              child: Stack(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgCoztazw031118x164,
                                    height: getVerticalSize(168.00),
                                    width: getHorizontalSize(180.00),
                                    alignment: Alignment.center)
                              ])))
                    ]))));
  }
}
