import 'package:flutter/material.dart';

import 'WeatherMvvm/widgets/city.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: City());
  }
}
