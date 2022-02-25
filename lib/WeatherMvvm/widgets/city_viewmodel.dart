import 'package:flutter/material.dart';
import 'package:weather_api_test/WeatherMvvm/model/city_model.dart';
import 'package:weather_api_test/core/service/weather_service.dart';

import 'city.dart';

class CityViewModel extends State<City> {
  final dio = WeatherNetwork.instance.dio;
  List<Weather> weathers = [];

  Future<void> fetchAllData() async {
    final response =
        await dio.get("https://weatherdbi.herokuapp.com/data/weather/london");
    print(response);

    if (response.statusCode == 200) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        final baseWeatherModel = BaseResponseModel.fromJson(data);
        weathers = baseWeatherModel.results ?? [];
      } else if (data is List) {
        weathers = data.map((e) => Weather.fromJson(e)).toList();
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

enum ServicePath { LONDON }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.LONDON:
        return "london";
    }
  }
}
