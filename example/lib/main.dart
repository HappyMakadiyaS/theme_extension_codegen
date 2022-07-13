import 'package:flutter/material.dart';

import 'color_theme_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        extensions: <ThemeExtension<dynamic>>[
          ColorTheme.light,
        ],
      ),
      darkTheme: ThemeData.dark().copyWith(
        extensions: <ThemeExtension<dynamic>>[
          ColorTheme.dark,
        ],
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).extension<ColorTheme>()!;
    return Scaffold(
      backgroundColor: colorTheme.scaffoldBgColor,
      appBar: AppBar(
        title: const Text("Theme Extension"),
      ),
      body: Center(
        child: Text(
          'Hello World!',
          style: TextStyle(color: colorTheme.textColor),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorTheme.floatingButtonColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
