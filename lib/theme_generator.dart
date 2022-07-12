import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:theme_extension_codegen/theme_annotation.dart';

class ThemeExtensionGenerator extends GeneratorForAnnotation<ThemeCodegen> {
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    var buffer = StringBuffer();
    if(element is ClassElement){
      final _class = element;
      final className = _class.name;
      final parameterList = _class.constructors.first.parameters;
      for (var param in parameterList) {
        if (!param.isRequiredNamed ||
            param.type.nullabilitySuffix.name != "none") {
          throw Exception(
            "All Parameters of default constructor must be named, required and not-nullable type.",
          );
        }
      }
      buffer.writeln(
          "abstract class _\$$className extends ThemeExtension<$className>{");
      buffer.writeln("const _\$$className({");
      for (var param in parameterList) {
        buffer.writeln("required this.${param.name},");
      }
      buffer.writeln("});");
      for (var param in parameterList) {
        buffer.writeln("final ${param.type} ${param.name};");
      }
      buffer.write("\n@override\n$className copyWith({");
      for (var param in parameterList) {
        buffer.writeln("${param.type}? ${param.name},");
      }
      buffer.writeln("}){\n return $className(");
      for (var param in parameterList) {
        buffer.writeln("${param.name}: ${param.name} ?? this.${param.name},");
      }
      buffer.writeln(");}");
      buffer.writeln(
          "\n@override\nThemeExtension<$className> lerp(ThemeExtension<$className>? other, double t){\nif(other is! $className){ return this;}");
      buffer.writeln("return $className(");
      for (var param in parameterList) {
        buffer.writeln(
            "${param.name}: ${param.type.getDisplayString(withNullability: false)}.lerp(${param.name},other.${param.name},t)!,");
      }
      buffer.writeln(");\n}");
      buffer.writeln("}");
      return "$buffer";
    }
  }
}


