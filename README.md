<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# theme_extension_codegen
Code generator for creating theme extension for Material app

## Usage
Short and useful examples for creating custom theme extension.
```dart
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
```

