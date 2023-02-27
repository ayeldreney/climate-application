import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:climateapplication/utilites/constants.dart';

class ApiManager {
  static Future getWeatherData(double latitude, double longitude) async {
    Uri url = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': '$latitude',
      'lon': '$longitude',
      'appid': apiKey,
    });
    http.Response response = await http.get(url);
    var decodedata = jsonDecode(response.body);
    return decodedata;
  }
}
