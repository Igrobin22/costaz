import 'controller/attendance_overall_result_controller.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'models/attendance_overall_result_model.dart';

class AttendanceOverallResultScreen extends GetWidget<AttendanceOverallResultController> {
  final List<List<RxBool>> checkboxes = Get.arguments;

  @override
  Widget build(BuildContext context) {
    List<RxBool> flattenedList = checkboxes.expand((element) => element).toList();
    int presentCount = flattenedList.where((element) => element.value).length;
    int absentCount = flattenedList.where((element) => !element.value).length;

    ChartData presentData = ChartData('Present', presentCount);
    ChartData absentData = ChartData('Absent', absentCount);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 14,
                                                    right: 20,
                                                    bottom: 14),
                                                decoration: AppDecoration
                                                    .gradientIndigoA20001Indigo400011
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL35),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 7, top: 9),
                                                          child: Text(
                                                              "lbl_class_1".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtLexendSemiBold54)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 7, top: 2),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            15),
                                                                    child: Text(
                                                                        "lbl_ooad2"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtLexendSemiBold20)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 3,
                                                                        top: 1,
                                                                        bottom:
                                                                            14),
                                                                    child: Text(
                                                                        "lbl_it"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtLexendSemiBold20)),
                                                                Spacer(),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            33),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            136),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                6),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.bottomCenter,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.topRight,
                                                                              child: Text("lbl_room_7".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendSemiBold13WhiteA70099)),
                                                                          Align(
                                                                              alignment: Alignment.bottomCenter,
                                                                              child: Text("msg_08_30_am_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendSemiBold13WhiteA70099))
                                                                        ]))
                                                              ]))
                                                    ]))),
                                        Container(
                                            height: getVerticalSize(169),
                                            width: getHorizontalSize(294),
                                            margin: getMargin(top: 44),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(presentData.category,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium14WhiteA700
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.1)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 116),
                                                          child: Text(
                                                              "lbl_present".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium14WhiteA700
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.1))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 5),
                                                          child: Text(
                                                              "lbl_absent".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium14WhiteA700
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.1))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            137,
                                                                        bottom:
                                                                            10),
                                                                    child: Text(absentCount>presentCount? absentCount.toString(): presentCount.toString(),
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: absentCount>presentCount?AppStyle
                                                                            .txtRobotoBold16DeeporangeA200:AppStyle
                                                                            .txtRobotoBold16 )),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            167),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            227),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        children: [
                                                                          Align(
                                                                            alignment: Alignment.center,
                                                                            child: Container(
                                                                              height: getVerticalSize(167),
                                                                              width: getHorizontalSize(165),
                                                                              child: SfCircularChart(
                                                                                series: <CircularSeries>[
                                                                                  PieSeries<ChartData, String>(
                                                                                    dataSource: <ChartData>[
                                                                                      ChartData('Present', presentCount),
                                                                                      ChartData('Absent', absentCount),
                                                                                    ],
                                                                                    xValueMapper: (ChartData data, _) => data.category,
                                                                                    yValueMapper: (ChartData data, _) => data.value,
                                                                                    pointColorMapper: (ChartData data, _) {
                                                                                      if (data.category == 'Present') {
                                                                                        return ColorConstant.lightBlueA200;
                                                                                      } else {
                                                                                        return ColorConstant.deepOrangeA20001;
                                                                                      }
                                                                                    },
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgTrophy,
                                                                              height: getVerticalSize(11),
                                                                              width: getHorizontalSize(66),
                                                                              alignment: Alignment.topRight,
                                                                              margin: getMargin(top: 10)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgMap,
                                                                              height: getVerticalSize(8),
                                                                              width: getHorizontalSize(57),
                                                                              alignment: Alignment.bottomLeft,
                                                                              margin: getMargin(bottom: 19))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            147),
                                                                    child: Text(absentCount>presentCount? presentCount.toString():absentCount.toString(),
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: absentCount>presentCount? AppStyle
                                                                            .txtRobotoBold16:AppStyle
                                                                            .txtRobotoBold16DeeporangeA200))
                                                              ])))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 38, right: 36),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .lightBlueA200)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 13),
                                                          child: Text(
                                                              "lbl_present".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoBold14))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 13, right: 40),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .deepOrangeA20001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 13),
                                                          child: Text(
                                                              "lbl_absent".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoBold14DeeporangeA20001))
                                                    ]))),
                                        Container(
                                            width: getHorizontalSize(318),
                                            margin: getMargin(
                                                left: 21, top: 20, right: 21),
                                            padding: getPadding(
                                                left: 35,
                                                top: 37,
                                                right: 35,
                                                bottom: 37),
                                            decoration: AppDecoration
                                                .fillIndigoA100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder35),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Total Students  =  ${presentCount+absentCount}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold17),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child: Text(
                                                          "Present    =    ${presentData.value}",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold17)),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 11),
                                                      child: Text(
                                                          "Absent    =    ${absentData.value}",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold17))
                                                ])),
                                        Container(
                                            height: getVerticalSize(36),
                                            width: getHorizontalSize(319),
                                            margin: getMargin(top: 67),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 134),
                                                          child: Text(
                                                              presentData.category,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterSemiBold15WhiteA700))),
                                                  CustomButton(
                                                    height: getVerticalSize(36),
                                                    width: getHorizontalSize(319),
                                                    text: "lbl_upload".tr,
                                                    onTap: () async {
                                                      bool isSaved = await controller.SaveAll();
                                                      if (isSaved) {
                                                        Get.dialog(
                                                          AlertDialog(
                                                            title: Text("Save successful"),
                                                            content: Text("Attendence updated successfully"),
                                                            actions: [
                                                              ElevatedButton(
                                                                onPressed: () {
                                                                  navigatetomainscreen();
                                                                },
                                                                child: Text("OK"),
                                                              )
                                                            ],
                                                          ),
                                                        );
                                                      }
                                                    },
                                                    alignment: Alignment.center,
                                                  ),
                                                ])),
                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "lbl_edit2".tr,
                                            margin: getMargin(
                                                left: 22,
                                                top: 15,
                                                right: 19,
                                                bottom: 66),
                                            variant:
                                                ButtonVariant.OutlineIndigoA100,
                                            fontStyle: ButtonFontStyle
                                                .InterRegular12IndigoA100,
                                            onTap: onBackPressed)
                                      ]))))
                    ]))));
  }

  navigatetomainscreen() {
    Get.toNamed(AppRoutes.mainScreen);
  }

  onBackPressed() {
    Get.back();
  }
}
