import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/place.dart';
import 'app_constants.dart'; // Import AppConstants

class ApiService {
  // Sử dụng AppConstants thay vì hardcode
  static String get baseUrl => "${AppConstants.baseUrl}/api/places";

  static Future<List<Place>> getAllPlaces() async {
    try {
      final response = await http
          .get(
            Uri.parse("$baseUrl/getAllPlace"),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          )
          .timeout(const Duration(seconds: 10)); // Thêm timeout

      if (response.statusCode == 200) {
        List data = json.decode(response.body);
        return data.map((place) => Place.fromJson(place)).toList();
      } else {
        throw Exception(
          "HTTP ${response.statusCode}: ${response.reasonPhrase}",
        );
      }
    } catch (e) {
      print("API Error: $e"); // Debug log
      throw Exception("Failed to load places: $e");
    }
  }
}
