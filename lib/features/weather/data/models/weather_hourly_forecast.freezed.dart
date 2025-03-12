// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_hourly_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherHourlyForecast {
  DateTime? get date => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  String? get weatherDescription => throw _privateConstructorUsedError;
  String? get weatherMain => throw _privateConstructorUsedError;
  String? get weatherIcon => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  double? get windSpeed => throw _privateConstructorUsedError;

  /// Create a copy of WeatherHourlyForecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherHourlyForecastCopyWith<WeatherHourlyForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherHourlyForecastCopyWith<$Res> {
  factory $WeatherHourlyForecastCopyWith(WeatherHourlyForecast value,
          $Res Function(WeatherHourlyForecast) then) =
      _$WeatherHourlyForecastCopyWithImpl<$Res, WeatherHourlyForecast>;
  @useResult
  $Res call(
      {DateTime? date,
      double? temp,
      String? weatherDescription,
      String? weatherMain,
      String? weatherIcon,
      double? humidity,
      double? windSpeed});
}

/// @nodoc
class _$WeatherHourlyForecastCopyWithImpl<$Res,
        $Val extends WeatherHourlyForecast>
    implements $WeatherHourlyForecastCopyWith<$Res> {
  _$WeatherHourlyForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherHourlyForecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? temp = freezed,
    Object? weatherDescription = freezed,
    Object? weatherMain = freezed,
    Object? weatherIcon = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherDescription: freezed == weatherDescription
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherMain: freezed == weatherMain
          ? _value.weatherMain
          : weatherMain // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherIcon: freezed == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherHourlyForecastImplCopyWith<$Res>
    implements $WeatherHourlyForecastCopyWith<$Res> {
  factory _$$WeatherHourlyForecastImplCopyWith(
          _$WeatherHourlyForecastImpl value,
          $Res Function(_$WeatherHourlyForecastImpl) then) =
      __$$WeatherHourlyForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      double? temp,
      String? weatherDescription,
      String? weatherMain,
      String? weatherIcon,
      double? humidity,
      double? windSpeed});
}

/// @nodoc
class __$$WeatherHourlyForecastImplCopyWithImpl<$Res>
    extends _$WeatherHourlyForecastCopyWithImpl<$Res,
        _$WeatherHourlyForecastImpl>
    implements _$$WeatherHourlyForecastImplCopyWith<$Res> {
  __$$WeatherHourlyForecastImplCopyWithImpl(_$WeatherHourlyForecastImpl _value,
      $Res Function(_$WeatherHourlyForecastImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherHourlyForecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? temp = freezed,
    Object? weatherDescription = freezed,
    Object? weatherMain = freezed,
    Object? weatherIcon = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
  }) {
    return _then(_$WeatherHourlyForecastImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherDescription: freezed == weatherDescription
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherMain: freezed == weatherMain
          ? _value.weatherMain
          : weatherMain // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherIcon: freezed == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$WeatherHourlyForecastImpl implements _WeatherHourlyForecast {
  const _$WeatherHourlyForecastImpl(
      {this.date,
      this.temp,
      this.weatherDescription,
      this.weatherMain,
      this.weatherIcon,
      this.humidity,
      this.windSpeed});

  @override
  final DateTime? date;
  @override
  final double? temp;
  @override
  final String? weatherDescription;
  @override
  final String? weatherMain;
  @override
  final String? weatherIcon;
  @override
  final double? humidity;
  @override
  final double? windSpeed;

  @override
  String toString() {
    return 'WeatherHourlyForecast(date: $date, temp: $temp, weatherDescription: $weatherDescription, weatherMain: $weatherMain, weatherIcon: $weatherIcon, humidity: $humidity, windSpeed: $windSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherHourlyForecastImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.weatherDescription, weatherDescription) ||
                other.weatherDescription == weatherDescription) &&
            (identical(other.weatherMain, weatherMain) ||
                other.weatherMain == weatherMain) &&
            (identical(other.weatherIcon, weatherIcon) ||
                other.weatherIcon == weatherIcon) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, temp, weatherDescription,
      weatherMain, weatherIcon, humidity, windSpeed);

  /// Create a copy of WeatherHourlyForecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherHourlyForecastImplCopyWith<_$WeatherHourlyForecastImpl>
      get copyWith => __$$WeatherHourlyForecastImplCopyWithImpl<
          _$WeatherHourlyForecastImpl>(this, _$identity);
}

abstract class _WeatherHourlyForecast implements WeatherHourlyForecast {
  const factory _WeatherHourlyForecast(
      {final DateTime? date,
      final double? temp,
      final String? weatherDescription,
      final String? weatherMain,
      final String? weatherIcon,
      final double? humidity,
      final double? windSpeed}) = _$WeatherHourlyForecastImpl;

  @override
  DateTime? get date;
  @override
  double? get temp;
  @override
  String? get weatherDescription;
  @override
  String? get weatherMain;
  @override
  String? get weatherIcon;
  @override
  double? get humidity;
  @override
  double? get windSpeed;

  /// Create a copy of WeatherHourlyForecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherHourlyForecastImplCopyWith<_$WeatherHourlyForecastImpl>
      get copyWith => throw _privateConstructorUsedError;
}
