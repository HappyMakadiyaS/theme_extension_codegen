import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'theme_generator.dart';

Builder themeExtensionGenerator(BuilderOptions options) =>
    SharedPartBuilder([ThemeExtensionGenerator()], 'themeExtension');
