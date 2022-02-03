//import 'package:flutter_weather/models/WeatherData.dart';
// ignore_for_file: prefer_collection_literals

import 'package:weatherz/models/WeatherData.dart';

class ForecastData {
  final List list;

  ForecastData({required this.list});

  factory ForecastData.fromJson(Map<String, dynamic> json) {
    // ignore: deprecated_member_use
    List list = List.empty();

    for (dynamic e in json['list']) {
      WeatherData w = WeatherData(
          date: DateTime.fromMillisecondsSinceEpoch(e['dt'] * 1000, isUtc: false),
          name: json['city']['name'],
          temp: e['main']['temp'].toDouble(),
          main: e['weather'][0]['main'],
          icon: e['weather'][0]['icon']);
      list.add(w);
    }

    return ForecastData(
      list: list,
    );
  }
}