import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class WeatherItem extends StatelessWidget {
  WeatherItem(Required required, Type weatherData, {Key? key, weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('New York', style: new TextStyle(color: Colors.black)),
            Text('Rain', style: new TextStyle(color: Colors.black, fontSize: 25.1)),
            // ignore: prefer_const_constructors
            Text('72°F',  style: new TextStyle(color: Colors.black)),
            Image.network('https://openweathermap.org/img/w/01d.png'),
            Text('Jun 28, 2022', style: new TextStyle(color: Colors.black)),
            Text('20:30', style: new TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}