import 'package:fpdart/fpdart.dart';
import 'package:weather_app/features/weather/data/models/location_model.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/data/repositories/weather_repository_impl.dart';

abstract class WeatherRepository {
  Future<Either<WeatherException, WeatherModel>> getWeatherByLocation(
    double latitude,
    double longitude,
    String units,
  );

  Future<Either<WeatherException, List<LocationModel>>> getLocationByName(
    String cityName, {
    int limit = 5,
  });

  Future<Either<WeatherException, List<LocationModel>>> getLocationByZipCode({
    required String zipCode,
    required String countryCode,
    int limit = 5,
  });
}
