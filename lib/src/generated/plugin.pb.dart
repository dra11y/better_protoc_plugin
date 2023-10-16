//
//  Generated code. Do not modify.
//  source: plugin.proto
//

// ignore_for_file: unnecessary_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'descriptor.pb.dart' as $0;

export 'plugin.pbenum.dart';

/// The version number of protocol compiler.
abstract interface class IVersion {
  $core.int get major;

  $core.int get minor;

  $core.int get patch;

  /// A suffix for alpha, beta or rc release, e.g., "alpha-1", "rc2". It should
  /// be empty for mainline stable releases.
  $core.String get suffix;
}

class Version extends $pb.GeneratedMessage implements IVersion {
  factory Version({
    $core.int? major,
    $core.int? minor,
    $core.int? patch,
    $core.String? suffix,
  }) {
    final $result = create();
    if (major != null) {
      $result.major = major;
    }
    if (minor != null) {
      $result.minor = minor;
    }
    if (patch != null) {
      $result.patch = patch;
    }
    if (suffix != null) {
      $result.suffix = suffix;
    }
    return $result;
  }
  Version._() : super();
  factory Version.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Version',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.protobuf.compiler'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'major', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'minor', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'patch', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'suffix')
    ..hasRequiredFields = false;

  @$core.Deprecated('Use deepCopy() instead. '
      'Will be removed in next major version')
  Version clone() => deepCopy();
  @$core.Deprecated('Use rebuild(void Function(Version) updates) instead. '
      'Will be removed in next major version')
  Version copyWith(void Function(Version) updates) => rebuild(updates);

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version? _defaultInstance;

  @$core.override
  @$pb.TagNumber(1)
  $core.int get major => $_getIZ(0);
  @$pb.TagNumber(1)
  set major($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMajor() => $_has(0);
  @$pb.TagNumber(1)
  void clearMajor() => clearField(1);

  @$core.override
  @$pb.TagNumber(2)
  $core.int get minor => $_getIZ(1);
  @$pb.TagNumber(2)
  set minor($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinor() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinor() => clearField(2);

  @$core.override
  @$pb.TagNumber(3)
  $core.int get patch => $_getIZ(2);
  @$pb.TagNumber(3)
  set patch($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatch() => clearField(3);

  /// A suffix for alpha, beta or rc release, e.g., "alpha-1", "rc2". It should
  /// be empty for mainline stable releases.
  @$core.override
  @$pb.TagNumber(4)
  $core.String get suffix => $_getSZ(3);
  @$pb.TagNumber(4)
  set suffix($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSuffix() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuffix() => clearField(4);
}

/// An encoded CodeGeneratorRequest is written to the plugin's stdin.
abstract interface class ICodeGeneratorRequest {
  /// The .proto files that were explicitly listed on the command-line.  The
  /// code generator should generate code only for these files.  Each file's
  /// descriptor will be included in proto_file, below.
  $core.List<$core.String> get fileToGenerate;

  /// The generator parameter passed on the command-line.
  $core.String get parameter;

  /// The version number of protocol compiler.
  IVersion get compilerVersion;

  ///  FileDescriptorProtos for all files in files_to_generate and everything
  ///  they import.  The files will appear in topological order, so each file
  ///  appears before any file that imports it.
  ///
  ///  protoc guarantees that all proto_files will be written after
  ///  the fields above, even though this is not technically guaranteed by the
  ///  protobuf wire format.  This theoretically could allow a plugin to stream
  ///  in the FileDescriptorProtos and handle them one by one rather than read
  ///  the entire set into memory at once.  However, as of this writing, this
  ///  is not similarly optimized on protoc's end -- it will store all fields in
  ///  memory at once before sending them to the plugin.
  ///
  ///  Type names of fields and extensions in the FileDescriptorProto are always
  ///  fully qualified.
  $core.List<$0.IFileDescriptorProto> get protoFile;
}

class CodeGeneratorRequest extends $pb.GeneratedMessage
    implements ICodeGeneratorRequest {
  factory CodeGeneratorRequest({
    $core.Iterable<$core.String>? fileToGenerate,
    $core.String? parameter,
    Version? compilerVersion,
    $core.Iterable<$0.FileDescriptorProto>? protoFile,
  }) {
    final $result = create();
    if (fileToGenerate != null) {
      $result.fileToGenerate.addAll(fileToGenerate);
    }
    if (parameter != null) {
      $result.parameter = parameter;
    }
    if (compilerVersion != null) {
      $result.compilerVersion = compilerVersion;
    }
    if (protoFile != null) {
      $result.protoFile.addAll(protoFile);
    }
    return $result;
  }
  CodeGeneratorRequest._() : super();
  factory CodeGeneratorRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CodeGeneratorRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CodeGeneratorRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.protobuf.compiler'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'fileToGenerate')
    ..aOS(2, _omitFieldNames ? '' : 'parameter')
    ..aOM<Version>(3, _omitFieldNames ? '' : 'compilerVersion',
        subBuilder: Version.create)
    ..pc<$0.FileDescriptorProto>(
        15, _omitFieldNames ? '' : 'protoFile', $pb.PbFieldType.PM,
        subBuilder: $0.FileDescriptorProto.create);

  @$core.Deprecated('Use deepCopy() instead. '
      'Will be removed in next major version')
  CodeGeneratorRequest clone() => deepCopy();
  @$core.Deprecated(
      'Use rebuild(void Function(CodeGeneratorRequest) updates) instead. '
      'Will be removed in next major version')
  CodeGeneratorRequest copyWith(void Function(CodeGeneratorRequest) updates) =>
      rebuild(updates);

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CodeGeneratorRequest create() => CodeGeneratorRequest._();
  CodeGeneratorRequest createEmptyInstance() => create();
  static $pb.PbList<CodeGeneratorRequest> createRepeated() =>
      $pb.PbList<CodeGeneratorRequest>();
  @$core.pragma('dart2js:noInline')
  static CodeGeneratorRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CodeGeneratorRequest>(create);
  static CodeGeneratorRequest? _defaultInstance;

  /// The .proto files that were explicitly listed on the command-line.  The
  /// code generator should generate code only for these files.  Each file's
  /// descriptor will be included in proto_file, below.
  @$core.override
  @$pb.TagNumber(1)
  $core.List<$core.String> get fileToGenerate => $_getList(0);

  /// The generator parameter passed on the command-line.
  @$core.override
  @$pb.TagNumber(2)
  $core.String get parameter => $_getSZ(1);
  @$pb.TagNumber(2)
  set parameter($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasParameter() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameter() => clearField(2);

  /// The version number of protocol compiler.
  @$core.override
  @$pb.TagNumber(3)
  Version get compilerVersion => $_getN(2);
  @$pb.TagNumber(3)
  set compilerVersion(Version v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCompilerVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompilerVersion() => clearField(3);
  @$pb.TagNumber(3)
  Version ensureCompilerVersion() => $_ensure(2);

  ///  FileDescriptorProtos for all files in files_to_generate and everything
  ///  they import.  The files will appear in topological order, so each file
  ///  appears before any file that imports it.
  ///
  ///  protoc guarantees that all proto_files will be written after
  ///  the fields above, even though this is not technically guaranteed by the
  ///  protobuf wire format.  This theoretically could allow a plugin to stream
  ///  in the FileDescriptorProtos and handle them one by one rather than read
  ///  the entire set into memory at once.  However, as of this writing, this
  ///  is not similarly optimized on protoc's end -- it will store all fields in
  ///  memory at once before sending them to the plugin.
  ///
  ///  Type names of fields and extensions in the FileDescriptorProto are always
  ///  fully qualified.
  @$core.override
  @$pb.TagNumber(15)
  $core.List<$0.FileDescriptorProto> get protoFile => $_getList(3);
}

/// Represents a single generated file.
abstract interface class ICodeGeneratorResponse_File {
  ///  The file name, relative to the output directory.  The name must not
  ///  contain "." or ".." components and must be relative, not be absolute (so,
  ///  the file cannot lie outside the output directory).  "/" must be used as
  ///  the path separator, not "\".
  ///
  ///  If the name is omitted, the content will be appended to the previous
  ///  file.  This allows the generator to break large files into small chunks,
  ///  and allows the generated text to be streamed back to protoc so that large
  ///  files need not reside completely in memory at one time.  Note that as of
  ///  this writing protoc does not optimize for this -- it will read the entire
  ///  CodeGeneratorResponse before writing files to disk.
  $core.String get name;

  ///  If non-empty, indicates that the named file should already exist, and the
  ///  content here is to be inserted into that file at a defined insertion
  ///  point.  This feature allows a code generator to extend the output
  ///  produced by another code generator.  The original generator may provide
  ///  insertion points by placing special annotations in the file that look
  ///  like:
  ///    @@protoc_insertion_point(NAME)
  ///  The annotation can have arbitrary text before and after it on the line,
  ///  which allows it to be placed in a comment.  NAME should be replaced with
  ///  an identifier naming the point -- this is what other generators will use
  ///  as the insertion_point.  Code inserted at this point will be placed
  ///  immediately above the line containing the insertion point (thus multiple
  ///  insertions to the same point will come out in the order they were added).
  ///  The double-@ is intended to make it unlikely that the generated code
  ///  could contain things that look like insertion points by accident.
  ///
  ///  For example, the C++ code generator places the following line in the
  ///  .pb.h files that it generates:
  ///    // @@protoc_insertion_point(namespace_scope)
  ///  This line appears within the scope of the file's package namespace, but
  ///  outside of any particular class.  Another plugin can then specify the
  ///  insertion_point "namespace_scope" to generate additional classes or
  ///  other declarations that should be placed in this scope.
  ///
  ///  Note that if the line containing the insertion point begins with
  ///  whitespace, the same whitespace will be added to every line of the
  ///  inserted text.  This is useful for languages like Python, where
  ///  indentation matters.  In these languages, the insertion point comment
  ///  should be indented the same amount as any inserted code will need to be
  ///  in order to work correctly in that context.
  ///
  ///  The code generator that generates the initial file and the one which
  ///  inserts into it must both run as part of a single invocation of protoc.
  ///  Code generators are executed in the order in which they appear on the
  ///  command line.
  ///
  ///  If |insertion_point| is present, |name| must also be present.
  $core.String get insertionPoint;

  /// The file contents.
  $core.String get content;

  /// Information describing the file content being inserted. If an insertion
  /// point is used, this information will be appropriately offset and inserted
  /// into the code generation metadata for the generated files.
  $0.IGeneratedCodeInfo get generatedCodeInfo;
}

class CodeGeneratorResponse_File extends $pb.GeneratedMessage
    implements ICodeGeneratorResponse_File {
  factory CodeGeneratorResponse_File({
    $core.String? name,
    $core.String? insertionPoint,
    $core.String? content,
    $0.GeneratedCodeInfo? generatedCodeInfo,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (insertionPoint != null) {
      $result.insertionPoint = insertionPoint;
    }
    if (content != null) {
      $result.content = content;
    }
    if (generatedCodeInfo != null) {
      $result.generatedCodeInfo = generatedCodeInfo;
    }
    return $result;
  }
  CodeGeneratorResponse_File._() : super();
  factory CodeGeneratorResponse_File.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CodeGeneratorResponse_File.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CodeGeneratorResponse.File',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.protobuf.compiler'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'insertionPoint')
    ..aOS(15, _omitFieldNames ? '' : 'content')
    ..aOM<$0.GeneratedCodeInfo>(16, _omitFieldNames ? '' : 'generatedCodeInfo',
        subBuilder: $0.GeneratedCodeInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Use deepCopy() instead. '
      'Will be removed in next major version')
  CodeGeneratorResponse_File clone() => deepCopy();
  @$core.Deprecated(
      'Use rebuild(void Function(CodeGeneratorResponse_File) updates) instead. '
      'Will be removed in next major version')
  CodeGeneratorResponse_File copyWith(
          void Function(CodeGeneratorResponse_File) updates) =>
      rebuild(updates);

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CodeGeneratorResponse_File create() => CodeGeneratorResponse_File._();
  CodeGeneratorResponse_File createEmptyInstance() => create();
  static $pb.PbList<CodeGeneratorResponse_File> createRepeated() =>
      $pb.PbList<CodeGeneratorResponse_File>();
  @$core.pragma('dart2js:noInline')
  static CodeGeneratorResponse_File getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CodeGeneratorResponse_File>(create);
  static CodeGeneratorResponse_File? _defaultInstance;

  ///  The file name, relative to the output directory.  The name must not
  ///  contain "." or ".." components and must be relative, not be absolute (so,
  ///  the file cannot lie outside the output directory).  "/" must be used as
  ///  the path separator, not "\".
  ///
  ///  If the name is omitted, the content will be appended to the previous
  ///  file.  This allows the generator to break large files into small chunks,
  ///  and allows the generated text to be streamed back to protoc so that large
  ///  files need not reside completely in memory at one time.  Note that as of
  ///  this writing protoc does not optimize for this -- it will read the entire
  ///  CodeGeneratorResponse before writing files to disk.
  @$core.override
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  ///  If non-empty, indicates that the named file should already exist, and the
  ///  content here is to be inserted into that file at a defined insertion
  ///  point.  This feature allows a code generator to extend the output
  ///  produced by another code generator.  The original generator may provide
  ///  insertion points by placing special annotations in the file that look
  ///  like:
  ///    @@protoc_insertion_point(NAME)
  ///  The annotation can have arbitrary text before and after it on the line,
  ///  which allows it to be placed in a comment.  NAME should be replaced with
  ///  an identifier naming the point -- this is what other generators will use
  ///  as the insertion_point.  Code inserted at this point will be placed
  ///  immediately above the line containing the insertion point (thus multiple
  ///  insertions to the same point will come out in the order they were added).
  ///  The double-@ is intended to make it unlikely that the generated code
  ///  could contain things that look like insertion points by accident.
  ///
  ///  For example, the C++ code generator places the following line in the
  ///  .pb.h files that it generates:
  ///    // @@protoc_insertion_point(namespace_scope)
  ///  This line appears within the scope of the file's package namespace, but
  ///  outside of any particular class.  Another plugin can then specify the
  ///  insertion_point "namespace_scope" to generate additional classes or
  ///  other declarations that should be placed in this scope.
  ///
  ///  Note that if the line containing the insertion point begins with
  ///  whitespace, the same whitespace will be added to every line of the
  ///  inserted text.  This is useful for languages like Python, where
  ///  indentation matters.  In these languages, the insertion point comment
  ///  should be indented the same amount as any inserted code will need to be
  ///  in order to work correctly in that context.
  ///
  ///  The code generator that generates the initial file and the one which
  ///  inserts into it must both run as part of a single invocation of protoc.
  ///  Code generators are executed in the order in which they appear on the
  ///  command line.
  ///
  ///  If |insertion_point| is present, |name| must also be present.
  @$core.override
  @$pb.TagNumber(2)
  $core.String get insertionPoint => $_getSZ(1);
  @$pb.TagNumber(2)
  set insertionPoint($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInsertionPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearInsertionPoint() => clearField(2);

  /// The file contents.
  @$core.override
  @$pb.TagNumber(15)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(15)
  set content($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(15)
  void clearContent() => clearField(15);

  /// Information describing the file content being inserted. If an insertion
  /// point is used, this information will be appropriately offset and inserted
  /// into the code generation metadata for the generated files.
  @$core.override
  @$pb.TagNumber(16)
  $0.GeneratedCodeInfo get generatedCodeInfo => $_getN(3);
  @$pb.TagNumber(16)
  set generatedCodeInfo($0.GeneratedCodeInfo v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasGeneratedCodeInfo() => $_has(3);
  @$pb.TagNumber(16)
  void clearGeneratedCodeInfo() => clearField(16);
  @$pb.TagNumber(16)
  $0.GeneratedCodeInfo ensureGeneratedCodeInfo() => $_ensure(3);
}

/// The plugin writes an encoded CodeGeneratorResponse to stdout.
abstract interface class ICodeGeneratorResponse {
  ///  Error message.  If non-empty, code generation failed.  The plugin process
  ///  should exit with status code zero even if it reports an error in this way.
  ///
  ///  This should be used to indicate errors in .proto files which prevent the
  ///  code generator from generating correct code.  Errors which indicate a
  ///  problem in protoc itself -- such as the input CodeGeneratorRequest being
  ///  unparseable -- should be reported by writing a message to stderr and
  ///  exiting with a non-zero status code.
  $core.String get error;

  /// A bitmask of supported features that the code generator supports.
  /// This is a bitwise "or" of values from the Feature enum.
  $fixnum.Int64 get supportedFeatures;

  $core.List<ICodeGeneratorResponse_File> get file;
}

class CodeGeneratorResponse extends $pb.GeneratedMessage
    implements ICodeGeneratorResponse {
  factory CodeGeneratorResponse({
    $core.String? error,
    $fixnum.Int64? supportedFeatures,
    $core.Iterable<CodeGeneratorResponse_File>? file,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (supportedFeatures != null) {
      $result.supportedFeatures = supportedFeatures;
    }
    if (file != null) {
      $result.file.addAll(file);
    }
    return $result;
  }
  CodeGeneratorResponse._() : super();
  factory CodeGeneratorResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CodeGeneratorResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CodeGeneratorResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.protobuf.compiler'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'supportedFeatures', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<CodeGeneratorResponse_File>(
        15, _omitFieldNames ? '' : 'file', $pb.PbFieldType.PM,
        subBuilder: CodeGeneratorResponse_File.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Use deepCopy() instead. '
      'Will be removed in next major version')
  CodeGeneratorResponse clone() => deepCopy();
  @$core.Deprecated(
      'Use rebuild(void Function(CodeGeneratorResponse) updates) instead. '
      'Will be removed in next major version')
  CodeGeneratorResponse copyWith(
          void Function(CodeGeneratorResponse) updates) =>
      rebuild(updates);

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CodeGeneratorResponse create() => CodeGeneratorResponse._();
  CodeGeneratorResponse createEmptyInstance() => create();
  static $pb.PbList<CodeGeneratorResponse> createRepeated() =>
      $pb.PbList<CodeGeneratorResponse>();
  @$core.pragma('dart2js:noInline')
  static CodeGeneratorResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CodeGeneratorResponse>(create);
  static CodeGeneratorResponse? _defaultInstance;

  ///  Error message.  If non-empty, code generation failed.  The plugin process
  ///  should exit with status code zero even if it reports an error in this way.
  ///
  ///  This should be used to indicate errors in .proto files which prevent the
  ///  code generator from generating correct code.  Errors which indicate a
  ///  problem in protoc itself -- such as the input CodeGeneratorRequest being
  ///  unparseable -- should be reported by writing a message to stderr and
  ///  exiting with a non-zero status code.
  @$core.override
  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);

  /// A bitmask of supported features that the code generator supports.
  /// This is a bitwise "or" of values from the Feature enum.
  @$core.override
  @$pb.TagNumber(2)
  $fixnum.Int64 get supportedFeatures => $_getI64(1);
  @$pb.TagNumber(2)
  set supportedFeatures($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSupportedFeatures() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportedFeatures() => clearField(2);

  @$core.override
  @$pb.TagNumber(15)
  $core.List<CodeGeneratorResponse_File> get file => $_getList(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
