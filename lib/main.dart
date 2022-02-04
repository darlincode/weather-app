import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import 'package:flutter_WeatherItem/widgets/Weather.dart';
//import 'package:flutter_weather/widgets/WeatherItem.dart';
import 'package:weatherz/Widgets/Weather.dart';
import 'package:weatherz/Widgets/WeatherItem.dart';
import 'package:weatherz/models/ForecastData.dart';
import 'package:weatherz/models/WeatherData.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool isLoading = false;
  late WeatherData weatherData;
  late ForecastData forecastData;

  @override
  void initState() {
    super.initState();

    loadWeather();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weatherz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Text('Weatherz'),
          ),
          body: Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // ignore: unnecessary_null_comparison
                    child: weatherData != null
                        ? Weather( weather: weatherData)
                        : Container(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: isLoading
                        ? const CircularProgressIndicator(
                            strokeWidth: 2.0,
                            valueColor:
                                AlwaysStoppedAnimation(Colors.white),
                          )
                        : IconButton(
                            icon: const Icon(Icons.refresh),
                            tooltip: 'Refresh',
                            onPressed: loadWeather,
                            color: Colors.white,
                          ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200.0,
                  // ignore: unnecessary_null_comparison
                  child: forecastData != null
                      ? ListView.builder(
                          itemCount: forecastData.list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => WeatherItem(
                              weather: forecastData.list.elementAt(index)))
                      : Container(),
                ),
              ),
            )
          ]))),
    );
  }

  loadWeather() async {
    setState(() {
      isLoading = true;
    });

    const lat = 40.730610;
    const lon = -73.935242;
    final weatherResponse = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?APPID=YOUR_APP_ID&lat=${lat.toString()}&lon=${lon.toString()}');
    final forecastResponse = await http.get(
        'https://api.openweathermap.org/data/2.5/forecast?APPID=YOUR_APP_ID&lat=${lat.toString()}&lon=${lon.toString()}');

    if (weatherResponse.statusCode == 200 &&
        forecastResponse.statusCode == 200) {
      return setState(() {
        weatherData =
            WeatherData.fromJson(jsonDecode(weatherResponse.body));
        forecastData =
            ForecastData.fromJson(jsonDecode(forecastResponse.body));
        isLoading = false;
      });
    }

    setState(() {
      isLoading = false;
    });
  }
}
