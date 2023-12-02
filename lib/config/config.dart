import 'package:flutter/services.dart';

class Config{

  static const MethodChannel _channel = MethodChannel('samples.flutter.dev/battery');

  static Future<int> getBatteryLevelNativeCode() async {
    return await _channel.invokeMethod('getBatteryLevel');
  }





}