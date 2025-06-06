import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/place.dart';

class ApiService {
  static const String baseUrl =
      "http://10.0.2.2:8080/api/places"; // dùng cho emulator Android

  static Future<List<Place>> getAllPlaces() async {
    final response = await http.get(Uri.parse("$baseUrl/getAllPlace"));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((place) => Place.fromJson(place)).toList();
    } else {
      throw Exception("Failed to load places");
    }
  }
}
