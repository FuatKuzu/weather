/*import 'dart:convert';
import 'package:http/http.dart' as http;
/mport 'package:weather2023/models/weather_model.dart';

import 'package:geolocator/geolocator.dart';

class WeatherService {
  //you can replace it with your own api key
  static const String apiKey = "65b546912489bd1b299467469212fb66";

  Future<WeatherModel> getWeather() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      double longitude = position.longitude;
      double latitude = position.latitude;
      final response = await http.get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric&lang=tr"));
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(response.body);
        WeatherModel weatherModel = WeatherModel.fromJson(jsonData);
        print("_++++++++++++++++++${response.statusCode}");
        return weatherModel;
      } else {
        throw Exception('Unexpected error occurred!');
      }
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
*/
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather2023/models/weather_model.dart';
import 'package:geolocator/geolocator.dart';

class WeatherService {
  static const String apiKey = "65b546912489bd1b299467469212fb66";

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<WeatherModel> getWeather() async {
    try {
      Position position = await _determinePosition();
      double longitude = position.longitude;
      double latitude = position.latitude;
      final response = await http.get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric&lang=tr"));
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(response.body);
        WeatherModel weatherModel = WeatherModel.fromJson(jsonData);
        // ignore: avoid_print
        print("_++++++++++++++++++${response.statusCode}");
        return weatherModel;
      } else {
        throw Exception('Unexpected error occurred!');
      }
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
