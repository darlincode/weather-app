// ignore: file_names
import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('New York', style: new TextStyle(color: Colors.white)),
        Text('Rain', style: new TextStyle(color: Colors.white, fontSize: 32.0)),
        Text('72°F',  style: new TextStyle(color: Colors.white)),
        Image.network('https://openweathermap.org/img/w/01d.png'),
        Text('Jun 28, 2018', style: new TextStyle(color: Colors.white)),
        Text('18:30', style: new TextStyle(color: Colors.white)),
      ],
    );
  }
}