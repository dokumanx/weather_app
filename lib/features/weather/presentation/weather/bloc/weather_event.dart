part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getWeatherByName({
    required String query,
  }) = _GetWeatherByName;

  const factory WeatherEvent.getWeatherByLocation({
    required double latitude,
    required double longitude,
    required String cityName,
  }) = _GetWeatherByLocation;

  const factory WeatherEvent.getLocationByName({
    required String query,
    @Default(5) limit,
  }) = _GetLocationByName;

  const factory WeatherEvent.changeUnits({
    Temp? tempType,
    Speed? speedType,
  }) = _ChangeUnits;

  const factory WeatherEvent.refresh() = _Refresh;
}
