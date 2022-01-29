// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: prefer_const_constructors
            Text('New York', style: TextStyle(color: Colors.black)),
            Text('Rain', style: const TextStyle(color: Colors.black, fontSize: 24.0)),
            Text('72°F',  style: TextStyle(color: Colors.black)),
            Image.network('https://openweathermap.org/img/w/01d.png'),
            Text('Jun 28, 2018', style: TextStyle(color: Colors.black)),
            Text('18:30', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}