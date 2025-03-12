import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/extensions/double_extensions.dart';
import 'package:weather_app/features/weather/data/models/model_parser.dart';
import 'package:weather_pack/weather_pack.dart';

part 'weather_daily_forecast.freezed.dart';

@freezed
class WeatherDailyForecast with _$WeatherDailyForecast {
  const factory WeatherDailyForecast({
    DateTime? date,
    DateTime? sunrise,
    DateTime? sunset,
    String? summary,
    double? tempMax,
    double? tempMin,
    String? weatherDescription,
    String? weatherMain,
    String? weatherIcon,
    double? humidity,
    double? windSpeed,
  }) = _WeatherDailyForecast;

  factory WeatherDailyForecast.fromJson(Map<String, dynamic> jsonData) {
    final temp = jsonData['temp'] as Map<String, dynamic>?;

    final weather =
        unpackList(jsonData, 'weather')?[0] as Map<String, dynamic>?;

    return WeatherDailyForecast(
      date: unpackDate(jsonData, 'dt'),
      sunrise: unpackDate(jsonData, 'sunrise'),
      sunset: unpackDate(jsonData, 'sunset'),
      summary: unpackString(weather, 'summary'),
      tempMin: unpackDouble(temp, 'min'),
      tempMax: unpackDouble(temp, 'max'),
      humidity: unpackDouble(jsonData, 'humidity'),
      windSpeed: unpackDouble(jsonData, 'wind_speed'),
      weatherDescription: unpackString(weather, 'description'),
      weatherMain: unpackString(weather, 'main'),
      weatherIcon: unpackString(weather, 'icon'),
    );
  }
}

extension WeatherDailyForecastX on WeatherDailyForecast {
  WeatherDailyForecast convertTemp(Temp prevTemp, Temp newTemp) {
    return copyWith(
      tempMax: (tempMax ?? 0.0).convertTemp(prevTemp, newTemp),
      tempMin: (tempMin ?? 0.0).convertTemp(prevTemp, newTemp),
    );
  }

  WeatherDailyForecast convertSpeed(Speed prevSpeed, Speed newSpeed) {
    return copyWith(
      windSpeed: (windSpeed ?? 0.0).convertSpeed(prevSpeed, newSpeed),
    );
  }
}
