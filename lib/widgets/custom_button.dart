import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        side: _setTextButtonBorder(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      default:
        return getPadding(
          all: 10,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillIndigo600:
        return ColorConstant.indigo600;
      case ButtonVariant.OutlineIndigoA100:
      case ButtonVariant.OutlineIndigoA100_1:
      case ButtonVariant.GradientRedA200Deeporange30001:
        return null;
      default:
        return ColorConstant.indigoA100;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA100:
        return BorderSide(
          color: ColorConstant.indigoA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigoA100_1:
        return BorderSide(
          color: ColorConstant.indigoA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.RoundedBorder11:
        return BorderRadius.circular(
          getHorizontalSize(
            11.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            3.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterRegular12IndigoA100:
        return TextStyle(
          color: ColorConstant.indigoA100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.LexendMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.29,
          ),
        );
      case ButtonFontStyle.InterSemiBold15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.27,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA100:
        return Border.all(
          color: ColorConstant.indigoA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigoA100_1:
        return Border.all(
          color: ColorConstant.indigoA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.GradientRedA200Deeporange30001:
        return true;
      default:
        return false;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientRedA200Deeporange30001:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.redA200,
            ColorConstant.deepOrange30001,
          ],
        );
      default:
        return null;
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder3,
  RoundedBorder8,
  RoundedBorder11,
}

enum ButtonPadding {
  PaddingAll10,
}

enum ButtonVariant {
  FillIndigoA100,
  OutlineIndigoA100,
  OutlineIndigoA100_1,
  FillIndigo600,
  GradientRedA200Deeporange30001,
}

enum ButtonFontStyle {
  InterRegular12,
  InterRegular12IndigoA100,
  LexendMedium14,
  InterSemiBold15,
}
