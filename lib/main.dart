// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weatherz',
      theme: ThemeData(
        primarySwatch: Colors.red,
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
                    child: Column(
                      children: <Widget>[
                        Text('New York',
                            // ignore: prefer_const_constructors
                            style: new TextStyle(color: Colors.white)),
                        Text('Rain',
                            // ignore: prefer_const_constructors
                            style: new TextStyle(
                                color: Colors.white, fontSize: 32.0)),
                        // ignore: prefer_const_constructors
                        Text('72°F', style: new TextStyle(color: Colors.white)),
                        Image.network(
                            'https://openweathermap.org/img/w/01d.png'),
                        Text('oct 18, 2021',
                            // ignore: prefer_const_constructors
                            style: new TextStyle(color: Colors.white)),
                        Text('04:20',
                            // ignore: prefer_const_constructors
                            style: new TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: IconButton(
                      // ignore: prefer_const_constructors
                      icon: new Icon(Icons.refresh),
                      tooltip: 'Refresh',
                      // ignore: avoid_returning_null_for_void
                      onPressed: () => null,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text('New York',
                                      style: TextStyle(color: Colors.black)),
                                  Text('Rain',
                                      // ignore: prefer_const_constructors
                                      style: new TextStyle(
                                          color: Colors.black, fontSize: 24.0)),
                                  Text('72°F',
                                      style:
                                          // ignore: prefer_const_constructors
                                          new TextStyle(color: Colors.black)),
                                 
                                ],
                              ),
                            ),
                          )),
                ),
              ),
            )
          ]))),
    );
  }
}
