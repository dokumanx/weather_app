// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherModel {
  String? get name => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  double? get windSpeed => throw _privateConstructorUsedError;
  double? get cloudiness => throw _privateConstructorUsedError;
  String? get weatherDescription => throw _privateConstructorUsedError;
  String? get weatherMain => throw _privateConstructorUsedError;
  String? get weatherIcon => throw _privateConstructorUsedError;
  List<WeatherDailyForecast> get daily => throw _privateConstructorUsedError;
  List<WeatherHourlyForecast> get hourly => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {String? name,
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
      List<WeatherDailyForecast> daily,
      List<WeatherHourlyForecast> hourly});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? cloudiness = freezed,
    Object? weatherDescription = freezed,
    Object? weatherMain = freezed,
    Object? weatherIcon = freezed,
    Object? daily = null,
    Object? hourly = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      cloudiness: freezed == cloudiness
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
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
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<WeatherDailyForecast>,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<WeatherHourlyForecast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
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
      List<WeatherDailyForecast> daily,
      List<WeatherHourlyForecast> hourly});
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? cloudiness = freezed,
    Object? weatherDescription = freezed,
    Object? weatherMain = freezed,
    Object? weatherIcon = freezed,
    Object? daily = null,
    Object? hourly = null,
  }) {
    return _then(_$WeatherModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      cloudiness: freezed == cloudiness
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
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
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<WeatherDailyForecast>,
      hourly: null == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<WeatherHourlyForecast>,
    ));
  }
}

/// @nodoc

class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl(
      {this.name,
      this.latitude,
      this.longitude,
      this.timezone,
      this.temp,
      this.humidity,
      this.windSpeed,
      this.cloudiness,
      this.weatherDescription,
      this.weatherMain,
      this.weatherIcon,
      final List<WeatherDailyForecast> daily = const [],
      final List<WeatherHourlyForecast> hourly = const []})
      : _daily = daily,
        _hourly = hourly;

  @override
  final String? name;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? timezone;
  @override
  final double? temp;
  @override
  final double? humidity;
  @override
  final double? windSpeed;
  @override
  final double? cloudiness;
  @override
  final String? weatherDescription;
  @override
  final String? weatherMain;
  @override
  final String? weatherIcon;
  final List<WeatherDailyForecast> _daily;
  @override
  @JsonKey()
  List<WeatherDailyForecast> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  final List<WeatherHourlyForecast> _hourly;
  @override
  @JsonKey()
  List<WeatherHourlyForecast> get hourly {
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourly);
  }

  @override
  String toString() {
    return 'WeatherModel(name: $name, latitude: $latitude, longitude: $longitude, timezone: $timezone, temp: $temp, humidity: $humidity, windSpeed: $windSpeed, cloudiness: $cloudiness, weatherDescription: $weatherDescription, weatherMain: $weatherMain, weatherIcon: $weatherIcon, daily: $daily, hourly: $hourly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.cloudiness, cloudiness) ||
                other.cloudiness == cloudiness) &&
            (identical(other.weatherDescription, weatherDescription) ||
                other.weatherDescription == weatherDescription) &&
            (identical(other.weatherMain, weatherMain) ||
                other.weatherMain == weatherMain) &&
            (identical(other.weatherIcon, weatherIcon) ||
                other.weatherIcon == weatherIcon) &&
            const DeepCollectionEquality().equals(other._daily, _daily) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      latitude,
      longitude,
      timezone,
      temp,
      humidity,
      windSpeed,
      cloudiness,
      weatherDescription,
      weatherMain,
      weatherIcon,
      const DeepCollectionEquality().hash(_daily),
      const DeepCollectionEquality().hash(_hourly));

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final String? name,
      final double? latitude,
      final double? longitude,
      final String? timezone,
      final double? temp,
      final double? humidity,
      final double? windSpeed,
      final double? cloudiness,
      final String? weatherDescription,
      final String? weatherMain,
      final String? weatherIcon,
      final List<WeatherDailyForecast> daily,
      final List<WeatherHourlyForecast> hourly}) = _$WeatherModelImpl;

  @override
  String? get name;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get timezone;
  @override
  double? get temp;
  @override
  double? get humidity;
  @override
  double? get windSpeed;
  @override
  double? get cloudiness;
  @override
  String? get weatherDescription;
  @override
  String? get weatherMain;
  @override
  String? get weatherIcon;
  @override
  List<WeatherDailyForecast> get daily;
  @override
  List<WeatherHourlyForecast> get hourly;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
