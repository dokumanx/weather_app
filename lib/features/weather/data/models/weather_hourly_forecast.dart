import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/extensions/double_extensions.dart';
import 'package:weather_app/features/weather/data/models/model_parser.dart';
import 'package:weather_pack/weather_pack.dart';

part 'weather_hourly_forecast.freezed.dart';

@freezed
class WeatherHourlyForecast with _$WeatherHourlyForecast {
  const factory WeatherHourlyForecast({
    DateTime? date,
    double? temp,
    String? weatherDescription,
    String? weatherMain,
    String? weatherIcon,
    double? humidity,
    double? windSpeed,
  }) = _WeatherHourlyForecast;

  factory WeatherHourlyForecast.fromJson(Map<String, dynamic> jsonData) {
    final weather =
        unpackList(jsonData, 'weather')?[0] as Map<String, dynamic>?;

    return WeatherHourlyForecast(
      date: unpackDate(jsonData, 'dt'),
      temp: unpackDouble(jsonData, 'temp'),
      humidity: unpackDouble(jsonData, 'humidity'),
      windSpeed: unpackDouble(jsonData, 'wind_speed'),
      weatherDescription: unpackString(weather, 'description'),
      weatherMain: unpackString(weather, 'main'),
      weatherIcon: unpackString(weather, 'icon'),
    );
  }
}

extension WeatherHourlyForecastX on WeatherHourlyForecast {
  WeatherHourlyForecast convertTemp(Temp prevTemp, Temp newTemp) {
    return copyWith(
      temp: (temp ?? 0.0).convertTemp(prevTemp, newTemp),
    );
  }

  WeatherHourlyForecast convertSpeed(Speed prevSpeed, Speed newSpeed) {
    return copyWith(
      windSpeed: (windSpeed ?? 0.0).convertSpeed(prevSpeed, newSpeed),
    );
  }
}
