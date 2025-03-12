part of 'weather_bloc.dart';

enum WeatherStatus {
  initial,
  loading,
  loaded,
  error,
}

enum GeoStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    WeatherModel? weather,
    @Default(WeatherStatus.initial) WeatherStatus weatherStatus,
    @Default(GeoStatus.initial) GeoStatus geoStatus,
    @Default([]) List<LocationModel> locations,
    @Default('') String errorMessage,
    @Default(Temp.celsius) Temp tempType,
    @Default(Speed.ms) Speed speedType,
  }) = _WeatherState;
}
