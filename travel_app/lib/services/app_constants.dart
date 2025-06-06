import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

class AppConstants {
  static String get baseUrl {
    if (kIsWeb) {
      // Cho Flutter Web - sử dụng localhost hoặc IP thực của máy
      return 'http://localhost:8080';
      // Hoặc sử dụng IP thực: 'http://192.168.1.100:8080'
    }

    try {
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:8080'; // Android Emulator
      } else if (Platform.isIOS) {
        return 'http://localhost:8080'; // iOS Simulator
      } else if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
        return 'http://localhost:8080'; // Desktop
      } else {
        return 'http://localhost:8080'; // Fallback
      }
    } catch (e) {
      return 'http://localhost:8080'; // Fallback cho Flutter Web
    }
  }

  // Thêm method để get IP thực nếu cần
  static String getRealIpUrl(String ip) {
    return 'http://$ip:8080';
  }
}
