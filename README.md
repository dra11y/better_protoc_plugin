[![pub package](https://img.shields.io/pub/v/better_protoc_plugin.svg)](https://pub.dev/packages/better_protoc_plugin)
[![package publisher](https://img.shields.io/pub/publisher/better_protoc_plugin.svg)](https://pub.dev/packages/better_protoc_plugin/publisher)

# better_protoc_plugin

## Forked from [Google's protoc_plugin v22.0.0-dev @96d9522](https://github.com/google/protobuf.dart/tree/96d9522/protoc_plugin)

**Premise: The reason I created this fork is to make it easier to use *protobuf* with Dart backends/database ORMs by generating interfaces, because having to create separate database model definitions without the type safety of interfaces is extra work and error prone. Heck, protoc_plugin generates your backend services and client stubs for you! Why not go all the way?**

This fork improves the generators by adding interface classes, additional convenience wrappers/converters, and addressing several other open issues, without changing the underlying protocols.

- additional `abstract interface class` with typed getters generated for each message:
  - interface name prefixed with **I**;
  - useful for implementing strongly-typed ORM classes;
- `dart:core.DateTime` and `dart:core.Duration` setters/getters and conversion for `protobuf.Timestamp` and `protobuf.Duration` fields (google/protobuf.dart#792):
  - `DateTime` uses built-in protobuf `TimeStampMixin` converters;
- Dart null safety (nullable optionals) for non-required/presence fields, with getter/setter wrappers (google/protobuf.dart#493):
  - getters use `has{Field}()` to check for presence;
  - setting a field to `null` calls clearField();
  - not used for required/non-presence, repeated, or map fields;
- **real** Dart `enums` instead of classes with static constants (google/protobuf.dart#862):
  - generates proper Dart **camelCased** enum values with conversion to/from CONSTANT_CASE protobuf values (google/protobuf.dart#372);


## Bugfixes / PRs welcomed.

Please, Google Dart/Flutter Team, it would be great to see some of these features in the *official* dart protoc generator.

I will try to pull in any generator changes/improvements from `google/protobuf.dart`. Hopefully eventually we will see better support for Dart interfaces, optionals, enums, and native type conversions so it's easier to use protobuf with Dart backends & ORMs.

I intend to keep this updated and use in my production projects in the meantime.

## Testing

    $ dart pub get
    $ make run-tests

# Original protoc_plugin README:

This repository provides a Dart plugin for the [protoc compiler][1]. It generates
Dart files for working with data in protocol buffers format.

[1]: https://developers.google.com/protocol-buffers/docs/cpptutorial#compiling-your-protocol-buffers

## Requirements

To compile a .proto file, you must use the `protoc` command which is [installed
separately][1]. protoc 3.0.0 or above is required.

The generated files are pure Dart code that run either in the Dart VM or in a
browser (using [dart2js][2]). They depend on the [protobuf Dart package][3]. A
Dart project that includes generated files should add `protobuf` as a
dependency in the `pubspec.yaml` file.

[1]: https://developers.google.com/protocol-buffers/docs/downloads
[2]: https://dart.dev/tools/dart2js
[3]: https://pub.dev/packages/protobuf

## How to build

Make sure you have `dart` executable in your `PATH`. See the [Dart installation
instructions][1] for details.

If you encounter any issues while following the instructions below, please make
sure you have the latest version of Dart installed.

[1]: https://dart.dev/get-dart

**The recommended way** is to activate the latest published version of the
plugin:

    $ dart pub global activate protoc_plugin

Make sure you have `~/.pub-cache/bin` in your `PATH`.

This method installs a Dart script and requires presence of `dart` executable
in your `PATH`.

**To build from the source:**

- Run `dart pub get` in `protoc_plugin` directory
- Add `protoc_plugin/bin` to your `PATH`, or pass the path to
  `protoc_plugin/bin/protoc-gen-dart` to `protoc`'s `--plugin` option.

The `protoc-gen-dart` executable is a Dart script and requires presence of
`dart` executable in your `PATH`.

**To build a standalone executable from the source:**

- Run `dart pub get` in `protoc_plugin`
- Build standalone executable with `dart compile exe bin/protoc_plugin.dart` in
  `protoc_plugin`

The generated executable does not require a `dart` executable to run. You
should copy the generated executable `protoc_plugin/bin/protoc_plugin.exe` to
your `PATH` with name `protoc-gen-dart`, or pass the path to it to `protoc`'s
`--plugin` option when invoking `protoc`.

## How to use

Once you have `protoc-gen-dart` in the `PATH` the protocol buffer compiler can
be invoked like this to generate Dart for the proto file `test.proto`:

    $ protoc --dart_out=. test.proto

If you don't want to add `protoc-gen-dart` to `PATH`, you can specify the path
to it like this:

    $ protoc --dart_out=. test.proto --plugin=<path to plugin executable>

### Options to control the generated Dart code

The protocol buffer compiler accepts options for each plugin. For the
Dart plugin, these options are passed together with the `--dart_out`
option. The individual options are separated using comma, and the
final output directive is separated from the options using colon. Pass
options `<option 1>` and `<option 2>` like this:

    --dart_out="<option 1>,<option 2>:."

### Generating grpc Headers

To generate code for [grpc], you will need to pass in the `grpc` option:

    --dart_out="grpc:."

[grpc]: https://pub.dev/packages/grpc

### Generating Code Info

The plugin includes the `generate_kythe_info` option, which, if passed at run
time, will make the plugin generate metadata files alongside the `.dart` files
generated for the proto messages and their enums. Pass this along with the other
dart_out options:

    --dart_out="generate_kythe_info,<other options>:."

## Using protocol buffer libraries to build new libraries

The protocol buffer compiler produces several files for each `.proto` file
it compiles. In some cases this is not exactly what is needed, e.g one
would like to create new libraries which exposes the objects in these
libraries or create new libraries combining object definitions from
several `.proto` libraries into one.

The best way to approach this is to create the new libraries needed and
re-export the relevant protocol buffer classes.

Say we have the file `m1.proto` with the following content

```proto
syntax = "proto3";

message M1 {
  string a = 1;
}
```

and `m2.proto` containing

```proto
syntax = "proto3";

message M2 {
  string b = 1;
}
```

Compiling these to Dart will produce two libraries in `m1.pb.dart` and
`m2.pb.dart`. The following code shows a library `M` which combines
these two protocol buffer libraries, exposes the classes `M1` and `M2` and
adds some additional methods.

```dart
library M;

import "m1.pb.dart";
import "m2.pb.dart";

export "m1.pb.dart" show M1;
export "m2.pb.dart" show M2;

M1 createM1() => new M1();
M2 createM2() => new M2();
```

## Hacking

Here are some ways to get protoc:

* Linux: `apt-get install protobuf-compiler`
* Mac [homebrew](https://brew.sh/): `brew install protobuf`

If the version installed this way doesn't work, an alternative is to
[compile protoc from source](https://developers.google.com/protocol-buffers/docs/downloads).

Remember to run the tests. That is as easy as `dart pub get` and then `make
run-tests`.

## Useful references

* [Main Dart site](https://dart.dev)
* [Main protobuf site](https://github.com/protocolbuffers/protobuf)
* [Protobuf runtime support project](https://github.com/google/protobuf.dart)
