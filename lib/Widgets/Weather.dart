// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:weatherz/models/WeatherData.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key, required WeatherData weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // ignore: prefer_const_constructors
        Text('New York', style: new TextStyle(color: Colors.white)),
        // ignore: prefer_const_constructors
        Text('Rain', style: new TextStyle(color: Colors.white, fontSize: 32.0)),
        // ignore: prefer_const_constructors
        Text('72°F',  style: new TextStyle(color: Colors.white)),
        Image.network('https://openweathermap.org/img/w/01d.png'),
        // ignore: prefer_const_constructors
        Text('Jun 28, 2018', style: new TextStyle(color: Colors.white)),
        // ignore: prefer_const_constructors
        Text('18:30', style: new TextStyle(color: Colors.white)),
      ],
    );
  }
}