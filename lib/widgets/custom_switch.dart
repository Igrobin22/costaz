import 'package:costazandroid/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(18),
        width: getHorizontalSize(47),
        toggleSize: 14,
        borderRadius: getHorizontalSize(
          9.00,
        ),
        activeColor: ColorConstant.gray30001,
        activeToggleColor: ColorConstant.indigoA100,
        inactiveColor: ColorConstant.gray30001,
        inactiveToggleColor: ColorConstant.indigoA100,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
