import 'dart:async';

import 'package:flutter/services.dart';

class Hello {
  static const MethodChannel _channel = const MethodChannel('hello');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> toast(String msg) async {
    final String version = await _channel.invokeMethod('showToast', msg);
    return version;
  }

  static Future<String> toast2(String msg) async {
    final String version = await _channel.invokeMethod('showToast2', msg);
    return version;
  }
}
