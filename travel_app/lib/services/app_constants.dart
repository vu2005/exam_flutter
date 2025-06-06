// app_constants.dart
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

class AppConstants {
  static String get baseUrl {
    if (kIsWeb) {
      return 'http://localhost:8080'; // Chạy thử cho Flutter Web
    }
    try {
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:8080';
      } else if (Platform.isIOS || Platform.isMacOS) {
        return 'http://localhost:8080';
      } else {
        return 'http://192.168.1.32:8080'; // Địa chỉ mạng LAN hoặc host
      }
    } catch (e) {
      // fallback nếu Platform không hỗ trợ (VD: Flutter Web)
      return 'http://localhost:8080';
    }
  }
}
