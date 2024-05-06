import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/widgets.dart';
class Base64Converter{
Image imageFromBase64String(String base64String) {
  return Image.memory(base64Decode(base64String));
}
MemoryImage memoryImageFromBase64String(String base64String) {
  return MemoryImage(base64Decode(base64String));
}
Uint8List dataFromBase64String(String base64String) {
  return base64Decode(base64String);
}

String base64String(Uint8List data) {
  return base64Encode(data);
}



}