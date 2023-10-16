//
//  Generated code. Do not modify.
//  source: plugin.proto
//

// ignore_for_file: unnecessary_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Sync with code_generator.h.
enum CodeGeneratorResponse_Feature implements $pb.ProtobufEnum {
  featureNone(0, _omitEnumNames ? '' : 'FEATURE_NONE'),
  featureProto3Optional(1, _omitEnumNames ? '' : 'FEATURE_PROTO3_OPTIONAL');

  @$core.override
  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf.dart 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, CodeGeneratorResponse_Feature> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CodeGeneratorResponse_Feature? valueOf($core.int value) =>
      _byValue[value];

  const CodeGeneratorResponse_Feature(this.value, this.name);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
