import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

class PermissionManager {
  static Future getMotionPermission() async {
    var status = await Permission.activityRecognition.status;
    if (status.isDenied) {
      _requestPermissionForPlatform();
    } else if (status.isRestricted) {
      _requestPermissionForPlatform();
    }
  }

  static _requestPermissionForPlatform() {
    if (Platform.isAndroid) {
      return Permission.activityRecognition.request();
    }
  }
}
