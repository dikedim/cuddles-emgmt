import 'package:flutter/material.dart';

  webColor (String hexcode) {
    String colorcode = '0xff' + hexcode;
    colorcode =colorcode.replaceAll('#', '');
    int intcolor = int.parse(colorcode);
    return intcolor;
  }