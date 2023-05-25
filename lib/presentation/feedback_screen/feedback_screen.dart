import 'controller/feedback_controller.dart';
import 'package:costazandroid/core/app_export.dart';
import 'package:costazandroid/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackScreen extends GetWidget<FeedbackController> {
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
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: getPadding(
                      left: 20,
                      top: 123,
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_feedback".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLexendMedium49,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 29,
                            top: 176,
                          ),
                          child: RatingBar.builder(
                            initialRating: 2,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemSize: getVerticalSize(
                              42,
                            ),
                            unratedColor: ColorConstant.blueGray100,
                            itemCount: 5,
                            updateOnDrag: true,
                            onRatingUpdate: (rating) {},
                            itemBuilder: (context, _) {
                              return Icon(
                                Icons.star,
                                color: ColorConstant.indigo40001,
                              );
                            },
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            36,
                          ),
                          width: getHorizontalSize(
                            320,
                          ),
                          margin: getMargin(
                            top: 38,
                            bottom: 248,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgStar7,
                                height: getSize(
                                  14,
                                ),
                                width: getSize(
                                  14,
                                ),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(
                                  left: 13,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: getPadding(
                                    top: 8,
                                    bottom: 8,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack90060.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: getSize(
                                          20,
                                        ),
                                        width: getSize(
                                          20,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blueGray90019,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Obx(
                                        () => CustomCheckbox(
                                          width: getHorizontalSize(
                                            270,
                                          ),
                                          text: "lbl_enter_feedback".tr,
                                          value: controller.checkbox.value,
                                          fontStyle:
                                              CheckboxFontStyle.InterRegular12,
                                          isRightCheck: true,
                                          onChange: (value) {
                                            controller.checkbox.value = value;
                                          },
                                        ),
                                      ),
                                    ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
