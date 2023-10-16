//
//  Generated code. Do not modify.
//  source: test
//

// ignore_for_file: unnecessary_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

abstract interface class IEmpty {
}

class Empty extends $pb.GeneratedMessage implements IEmpty {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Use deepCopy() instead. '
  'Will be removed in next major version')
  Empty clone() => deepCopy();
  @$core.Deprecated(
  'Use rebuild(void Function(Empty) updates) instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => rebuild(updates);

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class TestApi {
  $pb.RpcClient _client;
  TestApi(this._client);

  $async.Future<Empty> ping($pb.ClientContext? ctx, Empty request) =>
    _client.invoke<Empty>(ctx, 'Test', 'Ping', request, Empty())
  ;
}


const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
