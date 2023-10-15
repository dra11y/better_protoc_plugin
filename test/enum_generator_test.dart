// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:better_protoc_plugin/indenting_writer.dart';
import 'package:better_protoc_plugin/protoc.dart';
import 'package:better_protoc_plugin/src/generated/descriptor.pb.dart';
import 'package:better_protoc_plugin/src/options.dart';
import 'package:collection/collection.dart';
import 'package:test/test.dart';

import 'golden_file.dart';

void main() {
  test('testEnumGenerator', () {
    final ed = EnumDescriptorProto()
      ..name = 'PhoneType'
      ..value.addAll([
        EnumValueDescriptorProto()
          ..name = 'MOBILE'
          ..number = 0,
        EnumValueDescriptorProto()
          ..name = 'HOME'
          ..number = 1,
        EnumValueDescriptorProto()
          ..name = 'WORK'
          ..number = 2,
        EnumValueDescriptorProto()
          ..name = 'BUSINESS'
          ..number = 2,
      ]);
    final writer = IndentingWriter(filename: 'sample.proto');
    final fg = FileGenerator(FileDescriptorProto(), GenerationOptions());
    final eg = EnumGenerator.topLevel(ed, fg, <String>{}, 0);
    print('eg.dartNames = ${eg.dartNames}');
    eg.generate(writer);
    expectMatchesGoldenFile(writer.toString(), 'test/goldens/enum');
    expectMatchesGoldenFile(
        writer.sourceLocationInfo.toString(), 'test/goldens/enum.meta');
  });

  test('testEnumGeneratorGeneratesCamelCase', () {
    final className = 'Abc';
    final expectedDartNames = {
      '_x': 'x_',
      '_Y': 'y_',
      'Z_': 'z_',
      'A_A': 'aA',
      'b_b': 'bB',
      'cc': 'cc',
      'camelCase': 'camelCase',
      'UpperCamelCase': 'upperCamelCase',
      'Abc_SNAKE_CASE': 'abcSnakeCase',
      'Abc_prefixed_lower_snake': 'prefixedLowerSnake',
      'Abc_Abc': 'abc',
      '__MiX_edC_aSE': 'mixEdcAse__',
    };

    final ed = EnumDescriptorProto()
      ..name = className
      ..value.addAll([
        ...expectedDartNames.keys
            .mapIndexed((index, key) => EnumValueDescriptorProto()
              ..name = key
              ..number = index)
      ]);
    final fg = FileGenerator(FileDescriptorProto(), GenerationOptions());
    final eg = EnumGenerator.topLevel(ed, fg, <String>{}, 0);
    for (final entry in expectedDartNames.entries) {
      expect({entry.key: eg.dartNames[entry.key]}, {entry.key: entry.value});
    }
  });
}
