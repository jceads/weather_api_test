import 'package:flutter/material.dart';

import 'WeatherMvvm/widgets/city.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline5: TextStyle(color: Colors.white),
          headline4: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          headline1: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      title: 'Material App',
      home: City(),
    );
  }
}
