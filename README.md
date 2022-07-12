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

part 'text.extension.g.dart';

class TextTheme extends _$TextTheme {
  const TextTheme({
    required TextStyle title,
    required TextStyle subtitle,
  }) : super(
    title: title,
    subtitle: subtitle,
  );

  @override
  TextTheme configureLERP(TextTheme other, double t) {
    throw UnimplementedError();
  }
}

```

