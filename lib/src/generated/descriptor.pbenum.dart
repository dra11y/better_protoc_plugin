//
//  Generated code. Do not modify.
//  source: descriptor.proto
//

// ignore_for_file: unnecessary_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum FieldDescriptorProto_Type implements $pb.ProtobufEnum {
  typeDouble(1, 'typeDouble', _omitEnumNames ? '' : 'TYPE_DOUBLE'),
  typeFloat(2, 'typeFloat', _omitEnumNames ? '' : 'TYPE_FLOAT'),
  typeInt64(3, 'typeInt64', _omitEnumNames ? '' : 'TYPE_INT64'),
  typeUint64(4, 'typeUint64', _omitEnumNames ? '' : 'TYPE_UINT64'),
  typeInt32(5, 'typeInt32', _omitEnumNames ? '' : 'TYPE_INT32'),
  typeFixed64(6, 'typeFixed64', _omitEnumNames ? '' : 'TYPE_FIXED64'),
  typeFixed32(7, 'typeFixed32', _omitEnumNames ? '' : 'TYPE_FIXED32'),
  typeBool(8, 'typeBool', _omitEnumNames ? '' : 'TYPE_BOOL'),
  typeString(9, 'typeString', _omitEnumNames ? '' : 'TYPE_STRING'),
  typeGroup(10, 'typeGroup', _omitEnumNames ? '' : 'TYPE_GROUP'),
  typeMessage(11, 'typeMessage', _omitEnumNames ? '' : 'TYPE_MESSAGE'),
  typeBytes(12, 'typeBytes', _omitEnumNames ? '' : 'TYPE_BYTES'),
  typeUint32(13, 'typeUint32', _omitEnumNames ? '' : 'TYPE_UINT32'),
  typeEnum(14, 'typeEnum', _omitEnumNames ? '' : 'TYPE_ENUM'),
  typeSfixed32(15, 'typeSfixed32', _omitEnumNames ? '' : 'TYPE_SFIXED32'),
  typeSfixed64(16, 'typeSfixed64', _omitEnumNames ? '' : 'TYPE_SFIXED64'),
  typeSint32(17, 'typeSint32', _omitEnumNames ? '' : 'TYPE_SINT32'),
  typeSint64(18, 'typeSint64', _omitEnumNames ? '' : 'TYPE_SINT64');

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

  static final $core.Map<$core.int, FieldDescriptorProto_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldDescriptorProto_Type? valueOf($core.int value) => _byValue[value];

  static final $core.Map<$core.String, FieldDescriptorProto_Type> _byProtoName =
      {for (final value in values) value.name: value};
  static final $core.Map<$core.String, FieldDescriptorProto_Type> _byDartName =
      values.asNameMap();
  static FieldDescriptorProto_Type? ofProtoName($core.String name) =>
      _byProtoName[name];
  static FieldDescriptorProto_Type? ofDartName($core.String name) =>
      _byDartName[name];

  const FieldDescriptorProto_Type(this.value, this.dartName, this.name);
}

enum FieldDescriptorProto_Label implements $pb.ProtobufEnum {
  labelOptional(1, 'labelOptional', _omitEnumNames ? '' : 'LABEL_OPTIONAL'),
  labelRequired(2, 'labelRequired', _omitEnumNames ? '' : 'LABEL_REQUIRED'),
  labelRepeated(3, 'labelRepeated', _omitEnumNames ? '' : 'LABEL_REPEATED');

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

  static final $core.Map<$core.int, FieldDescriptorProto_Label> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldDescriptorProto_Label? valueOf($core.int value) =>
      _byValue[value];

  static final $core.Map<$core.String, FieldDescriptorProto_Label>
      _byProtoName = {for (final value in values) value.name: value};
  static final $core.Map<$core.String, FieldDescriptorProto_Label> _byDartName =
      values.asNameMap();
  static FieldDescriptorProto_Label? ofProtoName($core.String name) =>
      _byProtoName[name];
  static FieldDescriptorProto_Label? ofDartName($core.String name) =>
      _byDartName[name];

  const FieldDescriptorProto_Label(this.value, this.dartName, this.name);
}

/// Generated classes can be optimized for speed or code size.
enum FileOptions_OptimizeMode implements $pb.ProtobufEnum {
  speed(1, 'speed', _omitEnumNames ? '' : 'SPEED'),
  codeSize(2, 'codeSize', _omitEnumNames ? '' : 'CODE_SIZE'),
  liteRuntime(3, 'liteRuntime', _omitEnumNames ? '' : 'LITE_RUNTIME');

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

  static final $core.Map<$core.int, FileOptions_OptimizeMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FileOptions_OptimizeMode? valueOf($core.int value) => _byValue[value];

  static final $core.Map<$core.String, FileOptions_OptimizeMode> _byProtoName =
      {for (final value in values) value.name: value};
  static final $core.Map<$core.String, FileOptions_OptimizeMode> _byDartName =
      values.asNameMap();
  static FileOptions_OptimizeMode? ofProtoName($core.String name) =>
      _byProtoName[name];
  static FileOptions_OptimizeMode? ofDartName($core.String name) =>
      _byDartName[name];

  const FileOptions_OptimizeMode(this.value, this.dartName, this.name);
}

enum FieldOptions_CType implements $pb.ProtobufEnum {
  string(0, 'string', _omitEnumNames ? '' : 'STRING'),
  cord(1, 'cord', _omitEnumNames ? '' : 'CORD'),
  stringPiece(2, 'stringPiece', _omitEnumNames ? '' : 'STRING_PIECE');

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

  static final $core.Map<$core.int, FieldOptions_CType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_CType? valueOf($core.int value) => _byValue[value];

  static final $core.Map<$core.String, FieldOptions_CType> _byProtoName = {
    for (final value in values) value.name: value
  };
  static final $core.Map<$core.String, FieldOptions_CType> _byDartName =
      values.asNameMap();
  static FieldOptions_CType? ofProtoName($core.String name) =>
      _byProtoName[name];
  static FieldOptions_CType? ofDartName($core.String name) => _byDartName[name];

  const FieldOptions_CType(this.value, this.dartName, this.name);
}

enum FieldOptions_JSType implements $pb.ProtobufEnum {
  jsNormal(0, 'jsNormal', _omitEnumNames ? '' : 'JS_NORMAL'),
  jsString(1, 'jsString', _omitEnumNames ? '' : 'JS_STRING'),
  jsNumber(2, 'jsNumber', _omitEnumNames ? '' : 'JS_NUMBER');

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

  static final $core.Map<$core.int, FieldOptions_JSType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldOptions_JSType? valueOf($core.int value) => _byValue[value];

  static final $core.Map<$core.String, FieldOptions_JSType> _byProtoName = {
    for (final value in values) value.name: value
  };
  static final $core.Map<$core.String, FieldOptions_JSType> _byDartName =
      values.asNameMap();
  static FieldOptions_JSType? ofProtoName($core.String name) =>
      _byProtoName[name];
  static FieldOptions_JSType? ofDartName($core.String name) =>
      _byDartName[name];

  const FieldOptions_JSType(this.value, this.dartName, this.name);
}

/// Is this method side-effect-free (or safe in HTTP parlance), or idempotent,
/// or neither? HTTP based RPC implementation may choose GET verb for safe
/// methods, and PUT verb for idempotent methods instead of the default POST.
enum MethodOptions_IdempotencyLevel implements $pb.ProtobufEnum {
  idempotencyUnknown(
      0, 'idempotencyUnknown', _omitEnumNames ? '' : 'IDEMPOTENCY_UNKNOWN'),
  noSideEffects(1, 'noSideEffects', _omitEnumNames ? '' : 'NO_SIDE_EFFECTS'),
  idempotent(2, 'idempotent', _omitEnumNames ? '' : 'IDEMPOTENT');

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

  static final $core.Map<$core.int, MethodOptions_IdempotencyLevel> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MethodOptions_IdempotencyLevel? valueOf($core.int value) =>
      _byValue[value];

  static final $core.Map<$core.String, MethodOptions_IdempotencyLevel>
      _byProtoName = {for (final value in values) value.name: value};
  static final $core.Map<$core.String, MethodOptions_IdempotencyLevel>
      _byDartName = values.asNameMap();
  static MethodOptions_IdempotencyLevel ofProtoName($core.String name) =>
      _byProtoName[name] ?? idempotencyUnknown;
  static MethodOptions_IdempotencyLevel ofDartName($core.String name) =>
      _byDartName[name] ?? idempotencyUnknown;

  const MethodOptions_IdempotencyLevel(this.value, this.dartName, this.name);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
