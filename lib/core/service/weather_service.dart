import 'package:dio/dio.dart';
import 'package:weather_api_test/core/service/model/region_model.dart';

class WeatherNetwork {
  final String _baseUrl =
      "https://weatherdbi.herokuapp.com/data/weather/london";
  static WeatherNetwork? _instance;
  static WeatherNetwork get instance {
    if (_instance != null) return _instance!;
    _instance = WeatherNetwork._init();
    return _instance!;
  }

  late final Dio dio;

  WeatherNetwork._init() {
    dio = Dio(BaseOptions(baseUrl: _baseUrl));
    dio.interceptors.add(InterceptorsWrapper(
      onResponse: (e, handler) {
        final data = e.data;
        if (data is Map<String, dynamic>) {
          final model = RegionModel.fromJson(data);
          if (model.region == null) {
            handler.reject(
                DioError(requestOptions: RequestOptions(path: e.realUri.path)));
            return;
          }
          // e.data = data["regions"];
        }
        handler.next(e);
      },
    ));
  }
}
