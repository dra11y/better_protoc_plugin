//
//  Generated code. Do not modify.
//  source: test.proto
//

// ignore_for_file: unnecessary_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package1.pb.dart' as $1;
import 'package2.pb.dart' as $2;

class M extends $pb.GeneratedMessage {
  factory M() => create();
  M._() : super();
  factory M.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory M.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'M', createEmptyInstance: create)
    ..aOM<M>(1, _omitFieldNames ? '' : 'm', subBuilder: M.create)
    ..aOM<$1.M>(2, _omitFieldNames ? '' : 'm1', subBuilder: $1.M.create)
    ..aOM<$2.M>(3, _omitFieldNames ? '' : 'm2', subBuilder: $2.M.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Use deepCopy() instead. '
  'Will be removed in next major version')
  @$core.override M clone() => deepCopy();
  @$core.Deprecated(
  'Use rebuild(void Function(M) updates) instead. '
  'Will be removed in next major version')
  @$core.override M copyWith(void Function(M) updates) => rebuild(updates);

  @$core.override $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static M create() => M._();
  @$core.override M createEmptyInstance() => create();
  static $pb.PbList<M> createRepeated() => $pb.PbList<M>();
  @$core.pragma('dart2js:noInline')
  static M getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<M>(create);
  static M? _defaultInstance;

  @$pb.TagNumber(1)
  M get m => $_getN(0);
  @$pb.TagNumber(1)
  set m(M v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasM() => $_has(0);
  @$pb.TagNumber(1)
  void clearM() => clearField(1);
  @$pb.TagNumber(1)
  M ensureM() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.M get m1 => $_getN(1);
  @$pb.TagNumber(2)
  set m1($1.M v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasM1() => $_has(1);
  @$pb.TagNumber(2)
  void clearM1() => clearField(2);
  @$pb.TagNumber(2)
  $1.M ensureM1() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.M get m2 => $_getN(2);
  @$pb.TagNumber(3)
  set m2($2.M v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasM2() => $_has(2);
  @$pb.TagNumber(3)
  void clearM2() => clearField(3);
  @$pb.TagNumber(3)
  $2.M ensureM2() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
