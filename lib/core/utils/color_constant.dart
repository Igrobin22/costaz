import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color indigo300 = fromHex('#7b81de');
  static Color deepOrangeA100 = fromHex('#ffa684');

  static Color indigoA20002 = fromHex('#6177e3');

  static Color indigoA20001 = fromHex('#637be4');

  static Color indigoA20003 = fromHex('#6075e3');

  static Color black9007d = fromHex('#7d000000');

  static Color indigoA100 = fromHex('#7885ff');

  static Color whiteA700B7 = fromHex('#b7ffffff');

  static Color black9003f = fromHex('#3f000000');

  static Color lightBlue900 = fromHex('#0559a6');

  static Color whiteA70093 = fromHex('#93ffffff');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA700Aa = fromHex('#aaffffff');

  static Color black900Dd = fromHex('#dd000000');

  static Color deepOrange300 = fromHex('#ff8b60');

  static Color gray600 = fromHex('#787878');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray300 = fromHex('#94a3ab');

  static Color redA200 = fromHex('#ff5954');

  static Color gray200 = fromHex('#e7e7e7');

  static Color indigoA10001 = fromHex('#907fff');

  static Color whiteA700Ba = fromHex('#baffffff');

  static Color indigo400 = fromHex('#5865df');

  static Color gray10002 = fromHex('#f3f3f3');

  static Color indigo200 = fromHex('#9fa7ea');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f4f4f4');

  static Color blue300 = fromHex('#67aee9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo600 = fromHex('#2e3cbd');

  static Color blueGray90019 = fromHex('#192b2b2b');

  static Color whiteA700D1 = fromHex('#d1ffffff');

  static Color deepOrangeA200 = fromHex('#ff703b');

  static Color deepOrangeA20001 = fromHex('#ff6f39');

  static Color lightBlueA200 = fromHex('#39cef3');

  static Color indigoA200 = fromHex('#5968e0');

  static Color indigoA10099 = fromHex('#999ca2ff');

  static Color gray50 = fromHex('#f8f8f8');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color gray50001 = fromHex('#919191');

  static Color deepOrangeA400 = fromHex('#ff4906');

  static Color indigo40002 = fromHex('#5764df');

  static Color gray700 = fromHex('#626262');

  static Color gray500 = fromHex('#979797');

  static Color indigo40001 = fromHex('#525add');

  static Color indigo50 = fromHex('#e3eaf6');

  static Color deepOrange30001 = fromHex('#ff836f');

  static Color gray900 = fromHex('#1e1e1e');

  static Color gray90001 = fromHex('#050b22');

  static Color indigo40082 = fromHex('#82525add');

  static Color gray300 = fromHex('#e5e5e5');

  static Color gray30001 = fromHex('#dedede');

  static Color gray100 = fromHex('#f6f6f6');

  static Color lightBlue40000 = fromHex('#002db3fd');

  static Color deepPurpleA10000 = fromHex('#00b176ec');

  static Color gray90090 = fromHex('#90050b22');


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
