import '../controller/setting_controller.dart';
import '../models/setting_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingItemWidget extends StatelessWidget {
  SettingItemWidget(this.settingItemModelObj);

  SettingItemModel settingItemModelObj;

  var controller = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        78,
      ),
      width: getHorizontalSize(
        331,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: getPadding(
                left: 112,
                bottom: 15,
              ),
              child: Text(
                "lbl_settings".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLexendMedium24,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: getPadding(
                left: 18,
                top: 17,
                right: 18,
                bottom: 17,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder39,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 9,
                      top: 11,
                      bottom: 14,
                    ),
                    child: Text(
                      "lbl_notification".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLexendMedium14Gray90001,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      bottom: 1,
                    ),
                    padding: getPadding(
                      all: 4,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder21,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            33,
                          ),
                          width: getSize(
                            33,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.indigoA100,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
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
        ],
      ),
    );
  }
}
