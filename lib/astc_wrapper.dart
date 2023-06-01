import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter/widgets.dart';

typedef NativeCompressFunc = Int32 Function(Pointer<Utf8>, Pointer<Utf8>);
typedef DartCompressFunc = int Function(Pointer<Utf8>, Pointer<Utf8>);
void compressApi() {
  try {
    final astcLib = DynamicLibrary.open('library/libastc.so');
    final compress = astcLib
        .lookupFunction<NativeCompressFunc, DartCompressFunc>('compress');
    final Pointer<Utf8> input = 'assets/img1.jpg'.toNativeUtf8();
    final Pointer<Utf8> output = 'assets/img1.astc'.toNativeUtf8();
    final a = compress(input, output);
    debugPrint(a.toString());
    malloc.free(input);
    malloc.free(output);
  } catch (e) {
    debugPrint(e.toString());
  }
}
