import 'package:costazandroid/data/classes_list.dart';

import '../controller/select_class_controller.dart';
import '../models/selectclass_item_model.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:costazandroid/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';

// ignore: must_be_immutable
class SelectclassItemWidget extends StatelessWidget {
  SelectclassItemModel model;
  List<List<String>> userInputs = [];

  SelectclassItemWidget(this.model, {required this.userInputs});

  var controller = Get.find<SetupScheduleController>();

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: getPadding(
        left: 17,
        top: 18,
        right: 17,
        bottom: 18,
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
          Container(
            height: getVerticalSize(
              39,
            ),
            width: getHorizontalSize(
              63,
            ),
            margin: getMargin(
              left: 28,
              top: 3,
              bottom: 4,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    userInputs[model.index][0],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLexendSemiBold18,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    userInputs[model.index][1],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLexendSemiBold13,


                  ),
                ),Expanded(child: ListView.builder(itemBuilder: ((context, index){
                  return ListTile(
                    title: Text(controller.classes.value[index].classname!),
                    subtitle: Text(controller.classes.value[index].subject!),

                  );
                }))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
