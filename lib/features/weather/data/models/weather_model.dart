import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_animation/weather_animation.dart';
import 'package:weather_app/core/extensions/double_extensions.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';
import 'package:weather_app/features/weather/data/models/model_parser.dart';
import 'package:weather_app/features/weather/data/models/weather_daily_forecast.dart';
import 'package:weather_app/features/weather/data/models/weather_hourly_forecast.dart';
import 'package:weather_pack/weather_pack.dart';

part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    String? name,
    double? latitude,
    double? longitude,
    String? timezone,
    double? temp,
    double? humidity,
    double? windSpeed,
    double? cloudiness,
    String? weatherDescription,
    String? weatherMain,
    String? weatherIcon,
    @Default([]) List<WeatherDailyForecast> daily,
    @Default([]) List<WeatherHourlyForecast> hourly,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> jsonData) {
    final currentData = unpackMap(jsonData, 'current') as Map<String, dynamic>?;
    final weatherData = unpackList(currentData, 'weather');
    final hourlyData = unpackList(jsonData, 'hourly');
    final dailyData = unpackList(jsonData, 'daily');

    return WeatherModel(
      latitude: unpackDouble(jsonData, 'lat'),
      longitude: unpackDouble(jsonData, 'lon'),
      timezone: unpackString(jsonData, 'timezone'),
      cloudiness: unpackDouble(currentData, 'clouds'),
      humidity: unpackDouble(currentData, 'humidity'),
      temp: unpackDouble(currentData, 'temp'),
      windSpeed: unpackDouble(currentData, 'wind_speed'),
      weatherDescription: _isData(weatherData)
          ? unpackString(
                  weatherData!.first as Map<String, dynamic>?, 'description',)
              ?.capitalizeFirstLetter
          : null,
      weatherMain: _isData(weatherData)
          ? unpackString(weatherData!.first as Map<String, dynamic>?, 'main')
          : null,
      weatherIcon: _isData(weatherData)
          ? unpackString(weatherData!.first as Map<String, dynamic>?, 'icon')
          : null,
      hourly: _isData(hourlyData)
          ? hourlyData!
              .map((w) =>
                  WeatherHourlyForecast.fromJson(w as Map<String, dynamic>),)
              .toList()
          : [],
      daily: _isData(dailyData)
          ? dailyData!
              .map((w) =>
                  WeatherDailyForecast.fromJson(w as Map<String, dynamic>),)
              .toList()
          : [],
    );
  }

  static bool _isData<T extends List?>(T data) => data?.isNotEmpty ?? false;
}

extension WeatherModelX on WeatherModel {
  WeatherModel convertTemp(Temp prevTemp, Temp newTemp) {
    return copyWith(
      temp: (temp ?? 0.0).convertTemp(prevTemp, newTemp),
      daily: daily.map((e) => e.convertTemp(prevTemp, newTemp)).toList(),
      hourly: hourly.map((e) => e.convertTemp(prevTemp, newTemp)).toList(),
    );
  }

  WeatherModel convertSpeed(Speed prevSpeed, Speed newSpeed) {
    return copyWith(
      windSpeed: (windSpeed ?? 0.0).convertSpeed(prevSpeed, newSpeed),
      hourly: hourly.map((e) => e.convertSpeed(prevSpeed, newSpeed)).toList(),
      daily: daily.map((e) => e.convertSpeed(prevSpeed, newSpeed)).toList(),
    );
  }

  WeatherModel convertAllUnits({
    Temp prevTemp = Temp.celsius,
    Speed prevSpeed = Speed.ms,
    Temp? nextTemp,
    Speed? nextSpeed,
  }) {
    var weather = this;
    if (nextTemp != null) {
      weather = weather.convertTemp(prevTemp, nextTemp);
    }
    if (nextSpeed != null) {
      weather = weather.convertSpeed(prevSpeed, nextSpeed);
    }
    return weather;
  }

  Widget? get scene {
    if (weatherMain != null) {
      final weatherMain = this.weatherMain!.toLowerCase();

      if (weatherMain.contains('clear')) {
        return WeatherScene.scorchingSun.sceneWidget;
      } else if (weatherMain.contains('clouds') && (cloudiness ?? 100) <= 50) {
        return WeatherScene.sunset.sceneWidget;
      } else if (weatherMain.contains('clouds') && (cloudiness ?? 100) > 50) {
        return const WrapperScene(
          colors: [
            Color(0xff424242),
            Color(0xffcfd8dc),
          ],
          children: [CloudWidget()],
        );
      } else if (weatherMain.contains('snow') &&
          weatherMain.contains('heavy')) {
        return WeatherScene.snowfall.sceneWidget;
      } else if (weatherMain.contains('thunderstorm')) {
        return WeatherScene.stormy.sceneWidget;
      } else if (weatherMain.contains('snow')) {
        return WeatherScene.frosty.sceneWidget;
      } else if (weatherMain.contains('rain') &&
          (weatherMain.contains('light') ||
              weatherMain.contains('moderate') ||
              weatherMain.contains('shower'))) {
        return WeatherScene.showerSleet.sceneWidget;
      } else if (weatherMain.contains('rain')) {
        return WeatherScene.rainyOvercast.sceneWidget;
      }
      return null;
    } else {
      return null;
    }
  }
}
