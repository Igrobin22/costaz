import '../controller/edit_schedule_controller.dart';
import '../models/editschedule_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditscheduleItemWidget extends GetWidget<SetupScheduleController> {

  final int n;

  EditscheduleItemWidget({required this.n});

  @override
  Widget build(BuildContext context) {

    int n=Get.arguments;

    return Container(
      padding: getPadding(
        left: 17,
        top: 13,
        right: 17,
        bottom: 13,
      ),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        children: [
          Container(
            width: getSize(
              48,
            ),
            margin: getMargin(
              top: 4,
              bottom: 4,
            ),
            padding: getPadding(
              left: 9,
              top: 1,
              right: 9,
              bottom: 1,
            ),
            decoration: AppDecoration.txtFillIndigoA10001.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder12,
            ),
            child: Text(
              "lbl_m".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLexendSemiBold34,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 28,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  controller.classes.value[n].classname!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLexendSemiBold18,
                ),
                Container(
                  width: getHorizontalSize(
                    134,
                  ),
                  child: Text(
                    controller.classes.value[n].subject!,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLexendSemiBold13Indigo40082,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    134,
                  ),
                  child: Text(
                    '${controller.classes.value[n].times?.format(context) ?? ''} - ${controller.classes.value[n].timee?.format(context) ?? ''}',
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLexendSemiBold13Indigo40082,
                  ),
                ),







              ],
            ),
          ),
        ],
      ),
    );
  }
}
