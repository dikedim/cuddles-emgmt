import 'package:flutter/material.dart';

  webColor (String hexcode) {
    String colorcode = '0xff' + hexcode;
    colorcode =colorcode.replaceAll('#', '');
    int intcolor = int.parse(colorcode);
    return intcolor;
  }

  Color gradientTimetableCircleStart = Color(0xFF19AAD5);
  Color gradientTimetableCircleEnd = Color(0xFF2680C1);