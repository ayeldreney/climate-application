import 'package:http/http.dart' as http;
import 'package:climateapplication/utilites/constants.dart';

class ApiManager {
  static void getWetherData() async {
    Uri url = Uri.https(baseUrl, "data/2.5/weather",
        {"lat": 44.34, "lon": 10.99, "appid": apiKey});

    http.Response responce = await http.get(url);

    print(responce.statusCode);
  }
}
