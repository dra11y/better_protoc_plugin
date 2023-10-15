import 'package:test/test.dart';

import '../out/protos/google/protobuf/unittest.pb.dart';

void main() {
  test('testEnumIsEnum', () {
    // ignore: unnecessary_type_check
    expect(ForeignEnum.foreignFoo is Enum, true,
        reason: 'Generated enum is not a real Dart Enum!');
  });

  test('testEnumValueHasOriginalName', () {
    expect(ForeignEnum.foreignBar.name, 'FOREIGN_BAR',
        reason: 'Enum name string is not the original proto name!');
  });

  test('testEnumValueHasOriginalValue', () {
    expect(ForeignEnum.foreignBar.value, 5,
        reason: 'Enum value is not the original proto value!');
  });

  test('testEnumToString', () {
    expect(ForeignEnum.foreignBar.toString(), 'FOREIGN_BAR',
        reason: 'Enum value.toString() does not return its name!');
  });
}
