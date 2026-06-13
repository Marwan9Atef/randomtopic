import 'package:flutter/widgets.dart';
import 'package:randomtopic/core/theme/app_color.dart';
import 'package:randomtopic/core/theme/size_config.dart';
import 'package:randomtopic/core/theme/style_resources.dart';

class AppStyle {
  static TextStyle styleRegular11(
    BuildContext context, {
    Color color = AppColor.gray500,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 11,
      lineHeight: 16.5,
      fontWeight: FontWeightManager.regular,
    );
  }

  static TextStyle styleRegular12(
    BuildContext context, {
    Color color = AppColor.gray500,
    TextDecoration? decoration,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 12,
      lineHeight: 18,
      fontWeight: FontWeightManager.regular,
      decoration: decoration,
    );
  }

  static TextStyle styleRegular13(
    BuildContext context, {
    Color color = AppColor.gray500,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 13,
      lineHeight: 20.8,
      fontWeight: FontWeightManager.regular,
    );
  }

  static TextStyle styleRegular16(
    BuildContext context, {
    Color color = AppColor.gray400,
    TextDecoration? decoration,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 16,
      lineHeight: 24,
      fontWeight: FontWeightManager.regular,
      decoration: decoration,
    );
  }

  static TextStyle styleMedium10(
    BuildContext context, {
    Color color = AppColor.gray500,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 10,
      lineHeight: 15,
      fontWeight: FontWeightManager.medium,
      letterSpacing: .4,
    );
  }

  static TextStyle styleSemiBold11(
    BuildContext context, {
    Color color = AppColor.gray500,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 11,
      lineHeight: 16.5,
      fontWeight: FontWeightManager.semiBold,
    );
  }

  static TextStyle styleSemiBold12(
    BuildContext context, {
    Color color = AppColor.gray500,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 12,
      lineHeight: 18,
      fontWeight: FontWeightManager.semiBold,
    );
  }

  static TextStyle styleSemiBold13(
    BuildContext context, {
    Color color = AppColor.blue900,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 13,
      lineHeight: 19.5,
      fontWeight: FontWeightManager.semiBold,
    );
  }

  static TextStyle styleBold13(
    BuildContext context, {
    Color color = AppColor.white,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 13,
      lineHeight: 19.5,
      fontWeight: FontWeightManager.bold,
    );
  }

  static TextStyle styleBold14(
    BuildContext context, {
    Color color = AppColor.blue900,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 14,
      lineHeight: 21,
      fontWeight: FontWeightManager.bold,
    );
  }

  static TextStyle styleBold16(
    BuildContext context, {
    Color color = AppColor.blue900,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 16,
      lineHeight: 24,
      fontWeight: FontWeightManager.bold,
    );
  }

  static TextStyle styleBold18(
    BuildContext context, {
    Color color = AppColor.blue900,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 18,
      lineHeight: 24.3,
      fontWeight: FontWeightManager.bold,
    );
  }

  static TextStyle styleBold20(
    BuildContext context, {
    Color color = AppColor.blue900,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 20,
      lineHeight: 30,
      fontWeight: FontWeightManager.bold,
    );
  }

  static TextStyle styleBold22(
    BuildContext context, {
    Color color = AppColor.green,
  }) {
    return _style(
      context,
      color: color,
      fontSize: 22,
      lineHeight: 33,
      fontWeight: FontWeightManager.bold,
    );
  }

  static TextStyle _style(
    BuildContext context, {
    required Color color,
    required double fontSize,
    required double lineHeight,
    required FontWeight fontWeight,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    final responsiveFontSize = getResponsiveFontSize(
      context,
      fontSize: fontSize,
    );

    return TextStyle(
      color: color,
      fontSize: responsiveFontSize,
      fontFamily: FontConstants.fontFamilyOne,
      fontWeight: fontWeight,
      height: lineHeight / fontSize,
      letterSpacing: letterSpacing,
      decoration: decoration,
    );
  }
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
