//
//  Generated code. Do not modify.
//  source: descriptor.proto
//

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

main() {
  final myValue = FieldDescriptorProto_Label.LABEL_OPTIONAL;
  $core.print('myValue = ${FieldDescriptorProto_Label is $core.Enum}');
}

enum FieldDescriptorProto_Type implements $pb.ProtobufEnum {
  TYPE_DOUBLE(1, _omitEnumNames ? '' : 'TYPE_DOUBLE'),
  TYPE_FLOAT(2, _omitEnumNames ? '' : 'TYPE_FLOAT'),
  TYPE_INT64(3, _omitEnumNames ? '' : 'TYPE_INT64'),
  TYPE_UINT64(4, _omitEnumNames ? '' : 'TYPE_UINT64'),
  TYPE_INT32(5, _omitEnumNames ? '' : 'TYPE_INT32'),
  TYPE_FIXED64(6, _omitEnumNames ? '' : 'TYPE_FIXED64'),
  TYPE_FIXED32(7, _omitEnumNames ? '' : 'TYPE_FIXED32'),
  TYPE_BOOL(8, _omitEnumNames ? '' : 'TYPE_BOOL'),
  TYPE_STRING(9, _omitEnumNames ? '' : 'TYPE_STRING'),
  TYPE_GROUP(10, _omitEnumNames ? '' : 'TYPE_GROUP'),
  TYPE_MESSAGE(11, _omitEnumNames ? '' : 'TYPE_MESSAGE'),
  TYPE_BYTES(12, _omitEnumNames ? '' : 'TYPE_BYTES'),
  TYPE_UINT32(13, _omitEnumNames ? '' : 'TYPE_UINT32'),
  TYPE_ENUM(14, _omitEnumNames ? '' : 'TYPE_ENUM'),
  TYPE_SFIXED32(15, _omitEnumNames ? '' : 'TYPE_SFIXED32'),
  TYPE_SFIXED64(16, _omitEnumNames ? '' : 'TYPE_SFIXED64'),
  TYPE_SINT32(17, _omitEnumNames ? '' : 'TYPE_SINT32'),
  TYPE_SINT64(18, _omitEnumNames ? '' : 'TYPE_SINT64');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FieldDescriptorProto_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldDescriptorProto_Type? valueOf($core.int value) => _byValue[value];

  const FieldDescriptorProto_Type(this.value, this.name);
}

enum FieldDescriptorProto_Label implements $pb.ProtobufEnum {
  LABEL_OPTIONAL(1, _omitEnumNames ? '' : 'LABEL_OPTIONAL'),
  LABEL_REQUIRED(2, _omitEnumNames ? '' : 'LABEL_REQUIRED'),
  LABEL_REPEATED(3, _omitEnumNames ? '' : 'LABEL_REPEATED');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf.dart 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FieldDescriptorProto_Label> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldDescriptorProto_Label? valueOf($core.int value) =>
      _byValue[value];

  const FieldDescriptorProto_Label(this.value, this.name);
}

/// Generated classes can be optimized for speed or code size.
enum FileOptions_OptimizeMode implements $pb.ProtobufEnum {
  SPEED(1, _omitEnumNames ? '' : 'SPEED'),
  CODE_SIZE(2, _omitEnumNames ? '' : 'CODE_SIZE'),
  LITE_RUNTIME(3, _omitEnumNames ? '' : 'LITE_RUNTIME');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FileOptions_OptimizeMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FileOptions_OptimizeMode? valueOf($core.int value) => _byValue[value];

  const FileOptions_OptimizeMode(this.value, this.name);
}

enum FieldOptions_CType implements $pb.ProtobufEnum {
  STRING(0, _omitEnumNames ? '' : 'STRING'),
  CORD(1, _omitEnumNames ? '' : 'CORD'),
  STRING_PIECE(2, _omitEnumNames ? '' : 'STRING_PIECE');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FieldOptions_CType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_CType? valueOf($core.int value) => _byValue[value];

  const FieldOptions_CType(this.value, this.name);
}

enum FieldOptions_JSType implements $pb.ProtobufEnum {
  JS_NORMAL(0, _omitEnumNames ? '' : 'JS_NORMAL'),
  JS_STRING(1, _omitEnumNames ? '' : 'JS_STRING'),
  JS_NUMBER(2, _omitEnumNames ? '' : 'JS_NUMBER');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FieldOptions_JSType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_JSType? valueOf($core.int value) => _byValue[value];

  const FieldOptions_JSType(this.value, this.name);
}

/// Is this method side-effect-free (or safe in HTTP parlance), or idempotent,
/// or neither? HTTP based RPC implementation may choose GET verb for safe
/// methods, and PUT verb for idempotent methods instead of the default POST.
enum MethodOptions_IdempotencyLevel implements $pb.ProtobufEnum {
  IDEMPOTENCY_UNKNOWN(0, _omitEnumNames ? '' : 'IDEMPOTENCY_UNKNOWN'),
  NO_SIDE_EFFECTS(1, _omitEnumNames ? '' : 'NO_SIDE_EFFECTS'),
  IDEMPOTENT(2, _omitEnumNames ? '' : 'IDEMPOTENT');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, MethodOptions_IdempotencyLevel> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MethodOptions_IdempotencyLevel? valueOf($core.int value) =>
      _byValue[value];

  const MethodOptions_IdempotencyLevel(this.value, this.name);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
