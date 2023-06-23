import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class WeatherStatus {
  Widget getWeatherAnimation(int condition) {
    if (condition < 400) {
      return WeatherScene.drizzle.getWeather();
    } else if (condition < 600) {
      return WeatherScene.rainyOvercast.getWeather();
    } else if (condition < 700) {
      return WeatherScene.fog.getWeather();
    } else if (condition < 800) {
      return WeatherScene.snowfall.getWeather();
    } else if (condition == 800) {
      return WeatherScene.scorchingSun.getWeather();
    } else if (condition <= 804) {
      return WeatherScene.clouds.getWeather();
    } else if (condition <= 900) {
      return WeatherScene.sunset.getWeather();
    } else {
      return const Text("hata");
    }
  }
}
