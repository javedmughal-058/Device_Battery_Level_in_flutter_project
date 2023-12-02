import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:native_code_integration_in_flutter_project/config/config.dart';

class ServiceProvider extends ChangeNotifier {

  String batteryLevel = 'Battery Level';



  Future<void> batteryStatus() async{
    Timer(const Duration(seconds: 1), ()=> getBatteryLevel());
  }


  Future<void> getBatteryLevel() async {
    try {
      final int result = await Config.getBatteryLevelNativeCode();
      batteryLevel = 'Battery level at $result % .';
      notifyListeners();
      log(batteryLevel);
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
      notifyListeners();
    }
  }

}