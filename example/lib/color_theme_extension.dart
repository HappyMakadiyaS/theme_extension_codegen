import 'package:flutter/material.dart';
import 'package:theme_extension_codegen/theme_annotation.dart';

part 'color_theme_extension.g.dart';

@ThemeCodegen()
class ColorTheme extends _$ColorTheme {
  const ColorTheme({
    required Color scaffoldBgColor,
    required Color textColor,
    required Color floatingButtonColor,
  }) : super(
          scaffoldBgColor: scaffoldBgColor,
          textColor: textColor,
          floatingButtonColor: floatingButtonColor,
        );

  @override
  ColorTheme configureLERP(ColorTheme other, double t) {
    throw UnimplementedError();
  }

  static const ColorTheme light = ColorTheme(
    scaffoldBgColor: Color(0xffffffff),
    textColor: Color(0xff000000),
    floatingButtonColor: Color(0xff4c69d2),
  );
  static const ColorTheme dark = ColorTheme(
    scaffoldBgColor: Color(0xff000000),
    textColor: Color(0xffffffff),
    floatingButtonColor: Color(0xffff9500),
  );
}
