//
//  Generated code. Do not modify.
//  source: descriptor.proto
//

// ignore_for_file: unnecessary_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum FieldDescriptorProto_Type implements $pb.ProtobufEnum {
  typeDouble(1, _omitEnumNames ? '' : 'TYPE_DOUBLE'),
  typeFloat(2, _omitEnumNames ? '' : 'TYPE_FLOAT'),
  typeInt64(3, _omitEnumNames ? '' : 'TYPE_INT64'),
  typeUint64(4, _omitEnumNames ? '' : 'TYPE_UINT64'),
  typeInt32(5, _omitEnumNames ? '' : 'TYPE_INT32'),
  typeFixed64(6, _omitEnumNames ? '' : 'TYPE_FIXED64'),
  typeFixed32(7, _omitEnumNames ? '' : 'TYPE_FIXED32'),
  typeBool(8, _omitEnumNames ? '' : 'TYPE_BOOL'),
  typeString(9, _omitEnumNames ? '' : 'TYPE_STRING'),
  typeGroup(10, _omitEnumNames ? '' : 'TYPE_GROUP'),
  typeMessage(11, _omitEnumNames ? '' : 'TYPE_MESSAGE'),
  typeBytes(12, _omitEnumNames ? '' : 'TYPE_BYTES'),
  typeUint32(13, _omitEnumNames ? '' : 'TYPE_UINT32'),
  typeEnum(14, _omitEnumNames ? '' : 'TYPE_ENUM'),
  typeSfixed32(15, _omitEnumNames ? '' : 'TYPE_SFIXED32'),
  typeSfixed64(16, _omitEnumNames ? '' : 'TYPE_SFIXED64'),
  typeSint32(17, _omitEnumNames ? '' : 'TYPE_SINT32'),
  typeSint64(18, _omitEnumNames ? '' : 'TYPE_SINT64');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf.dart 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FieldDescriptorProto_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldDescriptorProto_Type? valueOf($core.int value) => _byValue[value];

  const FieldDescriptorProto_Type(this.value, this.name);
}

enum FieldDescriptorProto_Label implements $pb.ProtobufEnum {
  labelOptional(1, _omitEnumNames ? '' : 'LABEL_OPTIONAL'),
  labelRequired(2, _omitEnumNames ? '' : 'LABEL_REQUIRED'),
  labelRepeated(3, _omitEnumNames ? '' : 'LABEL_REPEATED');

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
  speed(1, _omitEnumNames ? '' : 'SPEED'),
  codeSize(2, _omitEnumNames ? '' : 'CODE_SIZE'),
  liteRuntime(3, _omitEnumNames ? '' : 'LITE_RUNTIME');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf.dart 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FileOptions_OptimizeMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FileOptions_OptimizeMode? valueOf($core.int value) => _byValue[value];

  const FileOptions_OptimizeMode(this.value, this.name);
}

enum FieldOptions_CType implements $pb.ProtobufEnum {
  string(0, _omitEnumNames ? '' : 'STRING'),
  cord(1, _omitEnumNames ? '' : 'CORD'),
  stringPiece(2, _omitEnumNames ? '' : 'STRING_PIECE');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf.dart 3 spec:
  /// Returns this enum's [name] or the [value] if names are not represented.
  @$core.override
  $core.String toString() => name == '' ? value.toString() : name;

  static final $core.Map<$core.int, FieldOptions_CType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_CType? valueOf($core.int value) => _byValue[value];

  const FieldOptions_CType(this.value, this.name);
}

enum FieldOptions_JSType implements $pb.ProtobufEnum {
  jsNormal(0, _omitEnumNames ? '' : 'JS_NORMAL'),
  jsString(1, _omitEnumNames ? '' : 'JS_STRING'),
  jsNumber(2, _omitEnumNames ? '' : 'JS_NUMBER');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf.dart 3 spec:
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
  idempotencyUnknown(0, _omitEnumNames ? '' : 'IDEMPOTENCY_UNKNOWN'),
  noSideEffects(1, _omitEnumNames ? '' : 'NO_SIDE_EFFECTS'),
  idempotent(2, _omitEnumNames ? '' : 'IDEMPOTENT');

  final $core.int value;

  @$core.override
  final $core.String name;

  /// protobuf.dart 3 spec:
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
