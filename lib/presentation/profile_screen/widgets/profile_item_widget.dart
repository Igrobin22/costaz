import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(this.profileItemModelObj);

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              top: 2,
              bottom: 3,
            ),
            child: Text(
              "lbl_email".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLexendMedium14,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 42,
              top: 4,
              bottom: 1,
            ),
            child: Text(
              "msg_princeharry68_9_gmail_com".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLexendSemiBold14Gray90001,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgLock,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              left: 8,
            ),
          ),
        ],
      ),
    );
  }
}
