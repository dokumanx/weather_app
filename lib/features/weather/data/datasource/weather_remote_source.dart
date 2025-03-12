import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/weather/data/models/location_model.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/modules/network_module.dart';

abstract class WeatherRemoteSource {
  Future<WeatherModel> getWeatherByLocation(
    double latitude,
    double longitude,
    String units,
  );

  Future<List<LocationModel>> getLocationByName(
    String cityName, {
    int limit = 5,
  });

  Future<LocationModel> getLocationByZipCode({
    required String zipCode,
    required String countryCode,
    int limit = 5,
  });
}

@LazySingleton(as: WeatherRemoteSource)
class WeatherRemoteSourceImpl implements WeatherRemoteSource {
  WeatherRemoteSourceImpl({
    @Named(weatherDioClient) required this.wService,
    @Named(locationDioClient) required this.geoService,
  });

  final Dio wService;
  final Dio geoService;

  static const String _direct = '/direct';
  static const String _zip = '/zip';
  static const String _oneCall = '/onecall';

  @override
  Future<WeatherModel> getWeatherByLocation(
    double latitude,
    double longitude,
    String units, // imperial or metric
  ) async {
    try {
      final response = await wService.get(
        _oneCall,
        queryParameters: {
          'lat': latitude.toString(),
          'lon': longitude.toString(),
          'units': units,
          'lang': 'en',
        },
      );

      final weather =
          WeatherModel.fromJson(response.data as Map<String, dynamic>);

      return weather;
    } catch (e) {
      throw Exception('Error while fetching weather data');
    }
  }

  @override
  Future<List<LocationModel>> getLocationByName(
    String cityName, {
    int limit = 5,
  }) async {
    try {
      final response = await geoService.get(
        _direct,
        queryParameters: {
          'q': cityName,
          'limit': limit,
        },
      );

      return (response.data as List)
          .map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Error while fetching weather data');
    }
  }

  @override
  Future<LocationModel> getLocationByZipCode({
    required String zipCode,
    required String countryCode,
    int limit = 5,
  }) async {
    try {
      final response = await geoService.get(
        _zip,
        queryParameters: {
          'zip': '$zipCode,$countryCode',
          'limit': limit,
        },
      );

      return LocationModel.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw Exception('Error while fetching weather data');
    }
  }
}
