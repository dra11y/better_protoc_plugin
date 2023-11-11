//
//  Generated code. Do not modify.
//  source: plugin.proto
//

// ignore_for_file: unnecessary_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Sync with code_generator.h.
enum CodeGeneratorResponse_Feature implements $pb.ProtobufEnum {
  featureNone(0, 'featureNone', _omitEnumNames ? '' : 'FEATURE_NONE'),
  featureProto3Optional(1, 'featureProto3Optional',
      _omitEnumNames ? '' : 'FEATURE_PROTO3_OPTIONAL');

  @$core.override
  final $core.int value;

  @$core.override
  final $core.String name;

  final $core.String dartName;

  /// protobuf.dart 3 spec:
  /// https://pub.dev/documentation/protobuf/latest/protobuf/ProtobufEnum/toString.html
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, CodeGeneratorResponse_Feature> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CodeGeneratorResponse_Feature? valueOf($core.int value) =>
      _byValue[value];

  static final $core.Map<$core.String, CodeGeneratorResponse_Feature>
      _byProtoName = {for (final value in values) value.name: value};
  static final $core.Map<$core.String, CodeGeneratorResponse_Feature>
      _byDartName = values.asNameMap();
  static CodeGeneratorResponse_Feature? ofProtoName($core.String name) =>
      _byProtoName[name];
  static CodeGeneratorResponse_Feature? ofDartName($core.String name) =>
      _byDartName[name];

  const CodeGeneratorResponse_Feature(this.value, this.dartName, this.name);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
