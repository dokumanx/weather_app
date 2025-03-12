import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/interceptors/auth_interceptor.dart';

const weatherDioClient = 'weatherDio';
const locationDioClient = 'locationDio';

@module
abstract class NetworkModule {
  @Named('weatherBaseUrl')
  String get weatherBaseUrl =>
      'https://api.openweathermap.org/data/3.0';

  @Named('locationBaseUrl')
  String get locationBaseUrl => 'https://api.openweathermap.org/geo/1.0';

  @Named(weatherDioClient)
  @singleton
  Dio weatherDio(@Named('weatherBaseUrl') String url) =>
      Dio(BaseOptions(baseUrl: url))..interceptors.add(AuthInterceptor());

  @Named(locationDioClient)
  @singleton
  Dio locationDio(@Named('locationBaseUrl') String url) =>
      Dio(BaseOptions(baseUrl: url))..interceptors.add(AuthInterceptor());
}
