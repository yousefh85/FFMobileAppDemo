// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

Future<String> getDeviceId(bool isOS, bool isAndroid) async {
  var deviceInfo = DeviceInfoPlugin();
  late String deviceId;

  deviceId = 'null';

  if (isOS) {
    var iosDeviceInfo = await deviceInfo.iosInfo;
    deviceId = iosDeviceInfo.identifierForVendor!;
  }

  if (isAndroid) {
    var androidDeviceInfo = await deviceInfo.androidInfo;
    deviceId = androidDeviceInfo.id!;
  }

  return deviceId;
}

Future getDeviceInfo(bool isOS, bool isAndroid) async {
  // Add your function code here!
  FFAppState().deviceUniqueId = await getDeviceId(isOS, isAndroid);
}
