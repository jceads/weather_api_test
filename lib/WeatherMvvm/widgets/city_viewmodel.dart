import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_api_test/WeatherMvvm/model/city_model.dart';
import 'package:weather_api_test/core/service/weather_service.dart';

import 'city.dart';

class CityViewModel extends State<City> {
  final dio = WeatherNetwork.instance.dio;
  Weather? weather;
  bool isLoading = true;

  @override
  void initState() {
    fetchAllData();
    super.initState();
  }

  Future<void> fetchAllData() async {
    final response = await dio.get(ServicePath.ANTALYA.rawValue);
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        final baseWeatherModel = Weather.fromJson(data);
        // weather = baseWeatherModel.results ?? Weather();
        weather = baseWeatherModel;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

enum ServicePath { LONDON, ANTALYA, ISTANBUL }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.LONDON:
        return "london";
      case ServicePath.ANTALYA:
        return "Antalya";
      case ServicePath.ISTANBUL:
        return "Istanbul";
    }
  }
}
