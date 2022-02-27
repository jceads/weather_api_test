import 'package:flutter/material.dart';

import 'WeatherMvvm/widgets/city.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline5: TextStyle(color: Colors.black),
          headline4: TextStyle(color: Colors.black),
          headline3: TextStyle(color: Colors.black),
          headline2: TextStyle(color: Colors.black),
          headline1: TextStyle(color: Colors.black),
          bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      title: 'Material App',
      home: City(),
    );
  }
}
