import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.onChange,
      this.text,
      this.width,
      this.margin});

  CheckboxPadding? padding;

  CheckboxVariant? variant;

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  bool? isRightCheck;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return InkWell(
      onTap: () {
        value = !(value!);
        onChange!(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: isRightCheck! ? getRightSideCheckbox() : getLeftSideCheckbox(),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
    );
  }

  Widget getRightSideCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getCheckboxWidget(),
      ],
    );
  }

  Widget getLeftSideCheckbox() {
    return Row(
      children: [
        getCheckboxWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getCheckboxWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Checkbox(
        value: value ?? false,
        onChanged: (value) {
          onChange!(value!);
        },
        checkColor: ColorConstant.fromHex("#ffd9d9d9"),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case CheckboxFontStyle.InterRegular12:
        return TextStyle(
          color: ColorConstant.black90060,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.indigoA100,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.29,
          ),
        );
    }
  }

  _setPadding() {
    switch (padding) {
      case CheckboxPadding.PaddingT2:
        return getPadding(
          top: 2,
          bottom: 2,
        );
      default:
        return null;
    }
  }

  _setColor() {
    switch (variant) {
      case CheckboxVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      default:
        return null;
    }
  }
}

enum CheckboxPadding { PaddingT2 }

enum CheckboxVariant { FillWhiteA700 }

enum CheckboxFontStyle { LexendRegular17, InterRegular12 }
