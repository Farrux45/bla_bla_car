import 'package:bla_bla_app/constant/color_const.dart';
import 'package:flutter/material.dart';

class TextStyleComp {
  static TextStyle regularStyle(double size) {
    return TextStyle(
      color: ColorConst.white,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle regularStyleGrey(double size) {
    return TextStyle(
      color: ColorConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle mediumStyle(double size) {
    return TextStyle(
      color: ColorConst.white,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle boldStyle(double size) {
    return TextStyle(
      color: ColorConst.white,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle regularStyleGreyy(double size) {
    return TextStyle(
      color: ColorConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle mediumStyleGrey(double size) {
    return TextStyle(
      color: ColorConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle boldStyleGrey(double size) {
    return TextStyle(
      color: ColorConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle boldStyleGreen(double size) {
    return TextStyle(
      color: ColorConst.green,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }
}