import '../controller/main_controller.dart';
import '../models/mainscreen_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainscreenItemWidget extends StatelessWidget {
  MainscreenItemWidget(this.mainscreenItemModelObj);

  MainscreenItemModel mainscreenItemModelObj;

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            top: 1,
            bottom: 13,
          ),
          child: Text(
            "lbl_subject".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold16WhiteA700,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 42,
            top: 1,
            bottom: 12,
          ),
          child: Text(
            "lbl_department".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold16WhiteA700,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_room".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold16WhiteA700,
              ),
              Text(
                "lbl_no".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold16WhiteA700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
