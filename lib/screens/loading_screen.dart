import 'package:climateapplication/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    Uri url = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': '44.34',
      'lon': '10.99',
      'appid': 'a5b37fffd5dd637e8bd8a7455a5df7a3'
    });
    http.Response response = await http.get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Get Location'),
        ),
      ),
    );
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }
}
