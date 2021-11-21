import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_element/src/widgets/theme/text_field_style.dart';
import 'package:flutter_element/widgets.dart';

class EleThemeData with Diagnosticable {
  const EleThemeData.raw({
    required this.primaryColor,
    required this.successColor,
    required this.warningColor,
    required this.dangerColor,
    required this.infoColor,
    required this.primaryTextColor,
    required this.regularTextColor,
    required this.secondaryTextColor,
    required this.placeholderColor,
    required this.borderColorBase,
    required this.borderColorLight,
    required this.borderColorLighter,
    required this.borderColorExtraLight,
    required this.backgroundColorBase,
    required this.backgroundColorWhite,
    required this.backgroundColorBlack,
    required this.borderRadiusBase,
    required this.borderStyle,
    required this.buttonThemeData,
    required this.imageThemeData,
    required this.radioStyle,
    required this.checkboxStyle,
    required this.textFieldStyle,
  })  : assert(primaryColor != null),
        assert(successColor != null),
        assert(warningColor != null),
        assert(dangerColor != null),
        assert(infoColor != null),
        assert(primaryTextColor != null),
        assert(regularTextColor != null),
        assert(secondaryTextColor != null),
        assert(placeholderColor != null),
        assert(borderColorBase != null),
        assert(borderColorLight != null),
        assert(borderColorLighter != null),
        assert(borderColorExtraLight != null),
        assert(backgroundColorBase != null),
        assert(backgroundColorWhite != null),
        assert(backgroundColorBlack != null),
        assert(borderRadiusBase != null),
        assert(borderStyle != null),
        assert(buttonThemeData != null),
        assert(imageThemeData != null),
        assert(radioStyle != null),
        assert(checkboxStyle != null),
        assert(textFieldStyle != null);

  factory EleThemeData({
    Color? primaryColor,
    Color? successColor,
    Color? warningColor,
    Color? dangerColor,
    Color? infoColor,
    Color? primaryTextColor,
    Color? regularTextColor,
    Color? secondaryTextColor,
    Color? placeholderColor,
    Color? borderColorBase,
    Color? borderColorLight,
    Color? borderColorLighter,
    Color? borderColorExtraLight,
    Color? backgroundColorBase,
    Color? backgroundColorWhite,
    Color? backgroundColorBlack,
    double? borderRadiusBase,
    EBorderStyle? borderStyle,
    EleButtonThemeData? buttonThemeData,
    EleImageThemeData? imageThemeData,
    ERadioStyle? radioStyle,
    ECheckboxStyle? checkboxStyle,
    ETextFieldStyle? textFieldStyle,
  }) {
    primaryColor ??= const Color(0xFF409EFF);
    successColor ??= const Color(0xFF67C23A);
    warningColor ??= const Color(0xFFE6A23C);
    dangerColor ??= const Color(0xFFF56C6C);
    infoColor ??= const Color(0xFF909399);

    primaryTextColor ??= const Color(0xFF303133);
    regularTextColor ??= const Color(0xFF606266);
    secondaryTextColor ??= const Color(0xFF909399);
    placeholderColor ??= const Color(0xFFC0C4CC);

    borderColorBase ??= const Color(0xFFDCDFE6);
    borderColorLight ??= const Color(0xFFE4E7ED);
    borderColorLighter ??= const Color(0xFFEBEEF5);
    borderColorExtraLight ??= const Color(0xFFF2F6FC);

    backgroundColorBase ??= const Color(0xFFF5F7FA);
    backgroundColorWhite ??= const Color(0xFFFFFFFF);
    backgroundColorBlack ??= const Color(0xFF000000);

    borderRadiusBase ??= 4.0;

    final EBorderStyle _defaultBorderStyle = EBorderStyle(
      color: borderColorBase,
      strokeWidth: 1,
      dashGap: 3,
      dashWidth: 3,
      radius: BorderRadius.all(Radius.circular(borderRadiusBase)),
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
    );
    final EBorderStyle _defaultCheckedBorderStyle =
        _defaultBorderStyle.merge(EBorderStyle(color: primaryColor));

    borderStyle = _defaultCheckedBorderStyle.merge(borderStyle);
    buttonThemeData ??= const EleButtonThemeData();

    EleImageThemeData _defaultImageTheme =
        EleImageThemeData.from(borderColorLight);
    imageThemeData = _defaultImageTheme.merge(imageThemeData);

    ERadioStyle _defaultRadioStyle = ERadioStyle(
        fontColor: regularTextColor,
        backgroundColor: backgroundColorWhite,
        borderColor: borderColorBase,
        checkedFontColor: primaryColor,
        checkedBorderColor: primaryColor,
        checkedBackgroundColor: backgroundColorWhite,
        buttonCheckedBorderColor: primaryColor,
        buttonCheckedFontColor: backgroundColorWhite,
        borderRadius: BorderRadius.all(Radius.circular(borderRadiusBase)),
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
        space: 3.0);
    radioStyle = _defaultRadioStyle.merge(radioStyle);

    ECheckboxStyle _defaultCheckboxStyle = ECheckboxStyle(
        fontColor: regularTextColor,
        backgroundColor: backgroundColorWhite,
        checkedFontColor: primaryColor,
        checkedBackgroundColor: backgroundColorWhite,
        borderColor: borderColorBase,
        checkedBorderColor: primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadiusBase)),
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
        space: 3.0);
    checkboxStyle = _defaultCheckboxStyle.merge(checkboxStyle);

    ETextFieldStyle _defaultTextFieldStyle = ETextFieldStyle(
      fontColor: regularTextColor,
      backgroundColor: backgroundColorWhite,
      placeholderColor: placeholderColor,
      borderColor: borderColorBase,
      focusBorderColor: primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(borderRadiusBase)),
      clearColor: borderColorBase,
    );
    textFieldStyle = _defaultTextFieldStyle.merge(textFieldStyle);

    return EleThemeData.raw(
      primaryColor: primaryColor,
      successColor: successColor,
      warningColor: warningColor,
      dangerColor: dangerColor,
      infoColor: infoColor,
      primaryTextColor: primaryTextColor,
      regularTextColor: regularTextColor,
      secondaryTextColor: secondaryTextColor,
      placeholderColor: placeholderColor,
      borderColorBase: borderColorBase,
      borderColorLight: borderColorLight,
      borderColorLighter: borderColorLighter,
      borderColorExtraLight: borderColorExtraLight,
      backgroundColorBase: backgroundColorBase,
      backgroundColorWhite: backgroundColorWhite,
      backgroundColorBlack: backgroundColorBlack,
      borderRadiusBase: borderRadiusBase,
      borderStyle: borderStyle,
      buttonThemeData: buttonThemeData,
      imageThemeData: imageThemeData,
      radioStyle: radioStyle,
      checkboxStyle: checkboxStyle,
      textFieldStyle: textFieldStyle,
    );
  }

  /// primary color
  ///
  /// if is null,value is theme primaryColor
  final Color? primaryColor;

  /// success color
  final Color? successColor;

  /// warning color
  final Color? warningColor;

  /// danger color
  final Color? dangerColor;

  /// info color
  final Color? infoColor;

  /// primary text color
  final Color? primaryTextColor;
  final Color? regularTextColor;
  final Color? secondaryTextColor;
  final Color? placeholderColor;

  /// one level border color
  final Color? borderColorBase;

  /// two level border color
  final Color? borderColorLight;

  /// three level border color
  final Color? borderColorLighter;

  /// four level border color
  final Color? borderColorExtraLight;

  /// backgroundColorBase
  final Color? backgroundColorBase;

  final Color? backgroundColorWhite;

  final Color? backgroundColorBlack;
  final double? borderRadiusBase;

  /// border theme data
  final EBorderStyle? borderStyle;

  /// button theme data
  final EleButtonThemeData? buttonThemeData;

  /// image theme
  final EleImageThemeData? imageThemeData;

  final ERadioStyle? radioStyle;
  final ECheckboxStyle? checkboxStyle;
  final ETextFieldStyle? textFieldStyle;

  factory EleThemeData.light() => EleThemeData();
}
