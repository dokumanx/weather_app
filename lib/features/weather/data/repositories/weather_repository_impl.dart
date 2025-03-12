import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/weather/data/datasource/weather_remote_source.dart';
import 'package:weather_app/features/weather/data/models/location_model.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';

abstract class WeatherException implements Exception {
  String get message;
}

class UnknownWeatherException implements WeatherException {
  UnknownWeatherException(this.message);

  @override
  final String message;
}

class WeatherByLocationException implements WeatherException {
  WeatherByLocationException(this.message);

  @override
  final String message;
}

class LocationByNameException implements WeatherException {
  LocationByNameException(this.message);

  @override
  final String message;
}

class LocationByZipCodeException implements WeatherException {
  LocationByZipCodeException(this.message);

  @override
  final String message;
}

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl({required this.remoteSource});

  final WeatherRemoteSource remoteSource;

  @override
  Future<Either<WeatherException, WeatherModel>> getWeatherByLocation(
    double latitude,
    double longitude,
    String units,
  ) async {
    try {
      final weather = await remoteSource.getWeatherByLocation(
        latitude,
        longitude,
        units,
      );
      return right(weather);
    } catch (e) {
      return left(
        WeatherByLocationException(e.toString()),
      );
    }
  }

  @override
  Future<Either<WeatherException, List<LocationModel>>> getLocationByName(
    String cityName, {
    int limit = 5,
  }) async {
    try {
      final location =
          await remoteSource.getLocationByName(cityName, limit: limit);
      return right(location);
    } catch (e) {
      return left(
        LocationByNameException(e.toString()),
      );
    }
  }

  @override
  Future<Either<WeatherException, List<LocationModel>>> getLocationByZipCode({
    required String zipCode,
    required String countryCode,
    int limit = 5,
  }) async {
    try {
      final location = await remoteSource.getLocationByZipCode(
        zipCode: zipCode,
        countryCode: countryCode,
        limit: limit,
      );
      return right([location]);
    } catch (e) {
      return left(
        LocationByZipCodeException(e.toString()),
      );
    }
  }
}
