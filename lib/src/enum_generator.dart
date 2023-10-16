// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '../protoc.dart';

class EnumAlias {
  final EnumValueDescriptorProto value;
  final EnumValueDescriptorProto canonicalValue;
  EnumAlias(this.value, this.canonicalValue);
}

class EnumGenerator extends ProtobufContainer {
  @override
  final ProtobufContainer? parent;

  @override
  final String? classname;

  @override
  final String? interfaceName;

  @override
  final String fullName;

  final EnumDescriptorProto _descriptor;
  final List<EnumValueDescriptorProto> _canonicalValues =
      <EnumValueDescriptorProto>[];
  final List<int> _originalCanonicalIndices = <int>[];
  final List<EnumAlias> _aliases = <EnumAlias>[];

  /// Maps the name of an enum value to the Dart name we will use for it.
  final Map<String, String> dartNames = <String, String>{};
  final List<int> _originalAliasIndices = <int>[];
  List<int>? _fieldPath;
  final List<int> _fieldPathSegment;

  /// See [[ProtobufContainer]
  @override
  List<int>? get fieldPath =>
      _fieldPath ??= List.from(parent!.fieldPath!)..addAll(_fieldPathSegment);

  EnumGenerator._(EnumDescriptorProto descriptor, this.parent,
      Set<String> usedClassNames, int repeatedFieldIndex, int fieldIdTag)
      : _fieldPathSegment = [fieldIdTag, repeatedFieldIndex],
        classname = messageOrEnumClassName(descriptor.name, usedClassNames,
            parent: parent!.classname ?? ''),
        interfaceName = null,
        fullName = parent.fullName == ''
            ? descriptor.name
            : '${parent.fullName}.${descriptor.name}',
        _descriptor = descriptor {
    final usedNames = {...reservedEnumNames};
    for (var i = 0; i < descriptor.value.length; i++) {
      final value = descriptor.value[i];
      final canonicalValue =
          descriptor.value.firstWhere((v) => v.number == value.number);
      if (value == canonicalValue) {
        _canonicalValues.add(value);
        _originalCanonicalIndices.add(i);
      } else {
        _aliases.add(EnumAlias(value, canonicalValue));
        _originalAliasIndices.add(i);
      }
      dartNames[value.name] =
          makeEnumValueName(value.name, classname, usedNames, enumSuffixes());
      // dartNames[value.name] = makeEnumValueName(disambiguateName(
      //     avoidInitialUnderscore(value.name), usedNames, enumSuffixes()));
    }
  }

  static const _topLevelFieldTag = 5;
  static const _nestedFieldTag = 4;

  EnumGenerator.topLevel(
      EnumDescriptorProto descriptor,
      ProtobufContainer parent,
      Set<String> usedClassNames,
      int repeatedFieldIndex)
      : this._(descriptor, parent, usedClassNames, repeatedFieldIndex,
            _topLevelFieldTag);

  EnumGenerator.nested(EnumDescriptorProto descriptor, ProtobufContainer parent,
      Set<String> usedClassNames, int repeatedFieldIndex)
      : this._(descriptor, parent, usedClassNames, repeatedFieldIndex,
            _nestedFieldTag);

  @override
  String get package => parent!.package;

  @override
  FileGenerator? get fileGen => parent!.fileGen;

  /// Make this enum available as a field type.
  void register(GenerationContext ctx) {
    ctx.registerFieldType(this);
  }

  /// Returns a const expression that evaluates to the JSON for this message.
  /// [usage] represents the .pb.dart file where the expression will be used.
  String getJsonConstant(FileGenerator usage) {
    final name = '$classname\$json';
    if (usage.protoFileUri == fileGen!.protoFileUri) {
      return name;
    }
    return '$fileImportPrefix.$name';
  }

  static const int _enumValueTag = 2;

  void generate(IndentingWriter out) {
    final comment = fileGen?.commentBlock(fieldPath!);
    if (comment != null) {
      out.println(comment);
    }
    out.addAnnotatedBlock(
        'enum $classname implements $protobufImportPrefix.ProtobufEnum {',
        '}\n', [
      NamedLocation(
          name: classname!, fieldPathSegment: fieldPath!, start: 'enum '.length)
    ], () {
      // -----------------------------------------------------------------
      // Define enum types.
      for (var i = 0; i < _canonicalValues.length; i++) {
        final val = _canonicalValues[i];
        final name = dartNames[val.name]!;
        final omitEnumNames = ConditionalConstDefinition('omit_enum_names');
        out.addSuffix(
            omitEnumNames.constFieldName, omitEnumNames.constDefinition);
        final conditionalValName = omitEnumNames.createTernary(val.name);
        final separator = i < _canonicalValues.length - 1 ? ',' : ';';
        out.printlnAnnotated(
            '$name(${val.number}, $conditionalValName)$separator', [
          NamedLocation(
              name: name,
              fieldPathSegment: List.from(fieldPath!)
                ..addAll([_enumValueTag, _originalCanonicalIndices[i]]),
              start: 0)
        ]);
      }
      if (_aliases.isNotEmpty) {
        out.println();
        for (var i = 0; i < _aliases.length; i++) {
          final alias = _aliases[i];
          final name = dartNames[alias.value.name]!;
          out.printlnAnnotated(
              'static const $classname $name ='
              ' ${dartNames[alias.canonicalValue.name]};',
              [
                NamedLocation(
                    name: name,
                    fieldPathSegment: List.from(fieldPath!)
                      ..addAll([_enumValueTag, _originalAliasIndices[i]]),
                    start: 'static const $classname '.length)
              ]);
        }
      }
      out.println();

      out.println('final $coreImportPrefix.int value;');
      out.println();

      out.println(
          '@$coreImportPrefix.override final $coreImportPrefix.String name;');
      out.println();

      out.println('''
  /// protobuf.dart 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @\$core.override
  \$core.String toString() => name == '' ? value.toString() : name;
      ''');

      out.println(
          'static final $coreImportPrefix.Map<$coreImportPrefix.int, $classname> _byValue ='
          ' $protobufImportPrefix.ProtobufEnum.initByValue(values);');
      out.println('static $classname? valueOf($coreImportPrefix.int value) =>'
          ' _byValue[value];');
      out.println();

      out.println('const $classname(this.value, this.name);');
    });
  }

  /// Writes a Dart constant containing the JSON for the EnumProtoDescriptor.
  void generateConstants(IndentingWriter out) {
    final name = getJsonConstant(fileGen!);
    final json = _descriptor.writeToJsonMap();

    out.println('@$coreImportPrefix.Deprecated'
        '(\'Use ${toplevelParent!.binaryDescriptorName} instead\')');
    out.print('const $name = ');
    writeJsonConst(out, json);
    out.println(';');
    out.println();
  }
}
