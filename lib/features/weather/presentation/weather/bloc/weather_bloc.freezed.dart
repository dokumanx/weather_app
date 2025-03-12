// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeatherByName,
    required TResult Function(
            double latitude, double longitude, String cityName)
        getWeatherByLocation,
    required TResult Function(String query, dynamic limit) getLocationByName,
    required TResult Function(Temp? tempType, Speed? speedType) changeUnits,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeatherByName,
    TResult? Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult? Function(String query, dynamic limit)? getLocationByName,
    TResult? Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeatherByName,
    TResult Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult Function(String query, dynamic limit)? getLocationByName,
    TResult Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherByName value) getWeatherByName,
    required TResult Function(_GetWeatherByLocation value) getWeatherByLocation,
    required TResult Function(_GetLocationByName value) getLocationByName,
    required TResult Function(_ChangeUnits value) changeUnits,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherByName value)? getWeatherByName,
    TResult? Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult? Function(_GetLocationByName value)? getLocationByName,
    TResult? Function(_ChangeUnits value)? changeUnits,
    TResult? Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherByName value)? getWeatherByName,
    TResult Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult Function(_GetLocationByName value)? getLocationByName,
    TResult Function(_ChangeUnits value)? changeUnits,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetWeatherByNameImplCopyWith<$Res> {
  factory _$$GetWeatherByNameImplCopyWith(_$GetWeatherByNameImpl value,
          $Res Function(_$GetWeatherByNameImpl) then) =
      __$$GetWeatherByNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GetWeatherByNameImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherByNameImpl>
    implements _$$GetWeatherByNameImplCopyWith<$Res> {
  __$$GetWeatherByNameImplCopyWithImpl(_$GetWeatherByNameImpl _value,
      $Res Function(_$GetWeatherByNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetWeatherByNameImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherByNameImpl implements _GetWeatherByName {
  const _$GetWeatherByNameImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'WeatherEvent.getWeatherByName(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherByNameImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherByNameImplCopyWith<_$GetWeatherByNameImpl> get copyWith =>
      __$$GetWeatherByNameImplCopyWithImpl<_$GetWeatherByNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeatherByName,
    required TResult Function(
            double latitude, double longitude, String cityName)
        getWeatherByLocation,
    required TResult Function(String query, dynamic limit) getLocationByName,
    required TResult Function(Temp? tempType, Speed? speedType) changeUnits,
    required TResult Function() refresh,
  }) {
    return getWeatherByName(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeatherByName,
    TResult? Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult? Function(String query, dynamic limit)? getLocationByName,
    TResult? Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult? Function()? refresh,
  }) {
    return getWeatherByName?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeatherByName,
    TResult Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult Function(String query, dynamic limit)? getLocationByName,
    TResult Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (getWeatherByName != null) {
      return getWeatherByName(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherByName value) getWeatherByName,
    required TResult Function(_GetWeatherByLocation value) getWeatherByLocation,
    required TResult Function(_GetLocationByName value) getLocationByName,
    required TResult Function(_ChangeUnits value) changeUnits,
    required TResult Function(_Refresh value) refresh,
  }) {
    return getWeatherByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherByName value)? getWeatherByName,
    TResult? Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult? Function(_GetLocationByName value)? getLocationByName,
    TResult? Function(_ChangeUnits value)? changeUnits,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return getWeatherByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherByName value)? getWeatherByName,
    TResult Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult Function(_GetLocationByName value)? getLocationByName,
    TResult Function(_ChangeUnits value)? changeUnits,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (getWeatherByName != null) {
      return getWeatherByName(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherByName implements WeatherEvent {
  const factory _GetWeatherByName({required final String query}) =
      _$GetWeatherByNameImpl;

  String get query;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWeatherByNameImplCopyWith<_$GetWeatherByNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherByLocationImplCopyWith<$Res> {
  factory _$$GetWeatherByLocationImplCopyWith(_$GetWeatherByLocationImpl value,
          $Res Function(_$GetWeatherByLocationImpl) then) =
      __$$GetWeatherByLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude, String cityName});
}

/// @nodoc
class __$$GetWeatherByLocationImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherByLocationImpl>
    implements _$$GetWeatherByLocationImplCopyWith<$Res> {
  __$$GetWeatherByLocationImplCopyWithImpl(_$GetWeatherByLocationImpl _value,
      $Res Function(_$GetWeatherByLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? cityName = null,
  }) {
    return _then(_$GetWeatherByLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherByLocationImpl implements _GetWeatherByLocation {
  const _$GetWeatherByLocationImpl(
      {required this.latitude,
      required this.longitude,
      required this.cityName});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String cityName;

  @override
  String toString() {
    return 'WeatherEvent.getWeatherByLocation(latitude: $latitude, longitude: $longitude, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherByLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, cityName);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherByLocationImplCopyWith<_$GetWeatherByLocationImpl>
      get copyWith =>
          __$$GetWeatherByLocationImplCopyWithImpl<_$GetWeatherByLocationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeatherByName,
    required TResult Function(
            double latitude, double longitude, String cityName)
        getWeatherByLocation,
    required TResult Function(String query, dynamic limit) getLocationByName,
    required TResult Function(Temp? tempType, Speed? speedType) changeUnits,
    required TResult Function() refresh,
  }) {
    return getWeatherByLocation(latitude, longitude, cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeatherByName,
    TResult? Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult? Function(String query, dynamic limit)? getLocationByName,
    TResult? Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult? Function()? refresh,
  }) {
    return getWeatherByLocation?.call(latitude, longitude, cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeatherByName,
    TResult Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult Function(String query, dynamic limit)? getLocationByName,
    TResult Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (getWeatherByLocation != null) {
      return getWeatherByLocation(latitude, longitude, cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherByName value) getWeatherByName,
    required TResult Function(_GetWeatherByLocation value) getWeatherByLocation,
    required TResult Function(_GetLocationByName value) getLocationByName,
    required TResult Function(_ChangeUnits value) changeUnits,
    required TResult Function(_Refresh value) refresh,
  }) {
    return getWeatherByLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherByName value)? getWeatherByName,
    TResult? Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult? Function(_GetLocationByName value)? getLocationByName,
    TResult? Function(_ChangeUnits value)? changeUnits,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return getWeatherByLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherByName value)? getWeatherByName,
    TResult Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult Function(_GetLocationByName value)? getLocationByName,
    TResult Function(_ChangeUnits value)? changeUnits,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (getWeatherByLocation != null) {
      return getWeatherByLocation(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherByLocation implements WeatherEvent {
  const factory _GetWeatherByLocation(
      {required final double latitude,
      required final double longitude,
      required final String cityName}) = _$GetWeatherByLocationImpl;

  double get latitude;
  double get longitude;
  String get cityName;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWeatherByLocationImplCopyWith<_$GetWeatherByLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLocationByNameImplCopyWith<$Res> {
  factory _$$GetLocationByNameImplCopyWith(_$GetLocationByNameImpl value,
          $Res Function(_$GetLocationByNameImpl) then) =
      __$$GetLocationByNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, dynamic limit});
}

/// @nodoc
class __$$GetLocationByNameImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetLocationByNameImpl>
    implements _$$GetLocationByNameImplCopyWith<$Res> {
  __$$GetLocationByNameImplCopyWithImpl(_$GetLocationByNameImpl _value,
      $Res Function(_$GetLocationByNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? limit = freezed,
  }) {
    return _then(_$GetLocationByNameImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      limit: freezed == limit ? _value.limit! : limit,
    ));
  }
}

/// @nodoc

class _$GetLocationByNameImpl implements _GetLocationByName {
  const _$GetLocationByNameImpl({required this.query, this.limit = 5});

  @override
  final String query;
  @override
  @JsonKey()
  final dynamic limit;

  @override
  String toString() {
    return 'WeatherEvent.getLocationByName(query: $query, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationByNameImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(limit));

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationByNameImplCopyWith<_$GetLocationByNameImpl> get copyWith =>
      __$$GetLocationByNameImplCopyWithImpl<_$GetLocationByNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeatherByName,
    required TResult Function(
            double latitude, double longitude, String cityName)
        getWeatherByLocation,
    required TResult Function(String query, dynamic limit) getLocationByName,
    required TResult Function(Temp? tempType, Speed? speedType) changeUnits,
    required TResult Function() refresh,
  }) {
    return getLocationByName(query, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeatherByName,
    TResult? Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult? Function(String query, dynamic limit)? getLocationByName,
    TResult? Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult? Function()? refresh,
  }) {
    return getLocationByName?.call(query, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeatherByName,
    TResult Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult Function(String query, dynamic limit)? getLocationByName,
    TResult Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (getLocationByName != null) {
      return getLocationByName(query, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherByName value) getWeatherByName,
    required TResult Function(_GetWeatherByLocation value) getWeatherByLocation,
    required TResult Function(_GetLocationByName value) getLocationByName,
    required TResult Function(_ChangeUnits value) changeUnits,
    required TResult Function(_Refresh value) refresh,
  }) {
    return getLocationByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherByName value)? getWeatherByName,
    TResult? Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult? Function(_GetLocationByName value)? getLocationByName,
    TResult? Function(_ChangeUnits value)? changeUnits,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return getLocationByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherByName value)? getWeatherByName,
    TResult Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult Function(_GetLocationByName value)? getLocationByName,
    TResult Function(_ChangeUnits value)? changeUnits,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (getLocationByName != null) {
      return getLocationByName(this);
    }
    return orElse();
  }
}

abstract class _GetLocationByName implements WeatherEvent {
  const factory _GetLocationByName(
      {required final String query,
      final dynamic limit}) = _$GetLocationByNameImpl;

  String get query;
  dynamic get limit;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLocationByNameImplCopyWith<_$GetLocationByNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUnitsImplCopyWith<$Res> {
  factory _$$ChangeUnitsImplCopyWith(
          _$ChangeUnitsImpl value, $Res Function(_$ChangeUnitsImpl) then) =
      __$$ChangeUnitsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Temp? tempType, Speed? speedType});
}

/// @nodoc
class __$$ChangeUnitsImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$ChangeUnitsImpl>
    implements _$$ChangeUnitsImplCopyWith<$Res> {
  __$$ChangeUnitsImplCopyWithImpl(
      _$ChangeUnitsImpl _value, $Res Function(_$ChangeUnitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempType = freezed,
    Object? speedType = freezed,
  }) {
    return _then(_$ChangeUnitsImpl(
      tempType: freezed == tempType
          ? _value.tempType
          : tempType // ignore: cast_nullable_to_non_nullable
              as Temp?,
      speedType: freezed == speedType
          ? _value.speedType
          : speedType // ignore: cast_nullable_to_non_nullable
              as Speed?,
    ));
  }
}

/// @nodoc

class _$ChangeUnitsImpl implements _ChangeUnits {
  const _$ChangeUnitsImpl({this.tempType, this.speedType});

  @override
  final Temp? tempType;
  @override
  final Speed? speedType;

  @override
  String toString() {
    return 'WeatherEvent.changeUnits(tempType: $tempType, speedType: $speedType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUnitsImpl &&
            (identical(other.tempType, tempType) ||
                other.tempType == tempType) &&
            (identical(other.speedType, speedType) ||
                other.speedType == speedType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tempType, speedType);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUnitsImplCopyWith<_$ChangeUnitsImpl> get copyWith =>
      __$$ChangeUnitsImplCopyWithImpl<_$ChangeUnitsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeatherByName,
    required TResult Function(
            double latitude, double longitude, String cityName)
        getWeatherByLocation,
    required TResult Function(String query, dynamic limit) getLocationByName,
    required TResult Function(Temp? tempType, Speed? speedType) changeUnits,
    required TResult Function() refresh,
  }) {
    return changeUnits(tempType, speedType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeatherByName,
    TResult? Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult? Function(String query, dynamic limit)? getLocationByName,
    TResult? Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult? Function()? refresh,
  }) {
    return changeUnits?.call(tempType, speedType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeatherByName,
    TResult Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult Function(String query, dynamic limit)? getLocationByName,
    TResult Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (changeUnits != null) {
      return changeUnits(tempType, speedType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherByName value) getWeatherByName,
    required TResult Function(_GetWeatherByLocation value) getWeatherByLocation,
    required TResult Function(_GetLocationByName value) getLocationByName,
    required TResult Function(_ChangeUnits value) changeUnits,
    required TResult Function(_Refresh value) refresh,
  }) {
    return changeUnits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherByName value)? getWeatherByName,
    TResult? Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult? Function(_GetLocationByName value)? getLocationByName,
    TResult? Function(_ChangeUnits value)? changeUnits,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return changeUnits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherByName value)? getWeatherByName,
    TResult Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult Function(_GetLocationByName value)? getLocationByName,
    TResult Function(_ChangeUnits value)? changeUnits,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (changeUnits != null) {
      return changeUnits(this);
    }
    return orElse();
  }
}

abstract class _ChangeUnits implements WeatherEvent {
  const factory _ChangeUnits({final Temp? tempType, final Speed? speedType}) =
      _$ChangeUnitsImpl;

  Temp? get tempType;
  Speed? get speedType;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeUnitsImplCopyWith<_$ChangeUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'WeatherEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeatherByName,
    required TResult Function(
            double latitude, double longitude, String cityName)
        getWeatherByLocation,
    required TResult Function(String query, dynamic limit) getLocationByName,
    required TResult Function(Temp? tempType, Speed? speedType) changeUnits,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeatherByName,
    TResult? Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult? Function(String query, dynamic limit)? getLocationByName,
    TResult? Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeatherByName,
    TResult Function(double latitude, double longitude, String cityName)?
        getWeatherByLocation,
    TResult Function(String query, dynamic limit)? getLocationByName,
    TResult Function(Temp? tempType, Speed? speedType)? changeUnits,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherByName value) getWeatherByName,
    required TResult Function(_GetWeatherByLocation value) getWeatherByLocation,
    required TResult Function(_GetLocationByName value) getLocationByName,
    required TResult Function(_ChangeUnits value) changeUnits,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherByName value)? getWeatherByName,
    TResult? Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult? Function(_GetLocationByName value)? getLocationByName,
    TResult? Function(_ChangeUnits value)? changeUnits,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherByName value)? getWeatherByName,
    TResult Function(_GetWeatherByLocation value)? getWeatherByLocation,
    TResult Function(_GetLocationByName value)? getLocationByName,
    TResult Function(_ChangeUnits value)? changeUnits,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements WeatherEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
mixin _$WeatherState {
  WeatherModel? get weather => throw _privateConstructorUsedError;
  WeatherStatus get weatherStatus => throw _privateConstructorUsedError;
  GeoStatus get geoStatus => throw _privateConstructorUsedError;
  List<LocationModel> get locations => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Temp get tempType => throw _privateConstructorUsedError;
  Speed get speedType => throw _privateConstructorUsedError;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {WeatherModel? weather,
      WeatherStatus weatherStatus,
      GeoStatus geoStatus,
      List<LocationModel> locations,
      String errorMessage,
      Temp tempType,
      Speed speedType});

  $WeatherModelCopyWith<$Res>? get weather;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? weatherStatus = null,
    Object? geoStatus = null,
    Object? locations = null,
    Object? errorMessage = null,
    Object? tempType = null,
    Object? speedType = null,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      weatherStatus: null == weatherStatus
          ? _value.weatherStatus
          : weatherStatus // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      geoStatus: null == geoStatus
          ? _value.geoStatus
          : geoStatus // ignore: cast_nullable_to_non_nullable
              as GeoStatus,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      tempType: null == tempType
          ? _value.tempType
          : tempType // ignore: cast_nullable_to_non_nullable
              as Temp,
      speedType: null == speedType
          ? _value.speedType
          : speedType // ignore: cast_nullable_to_non_nullable
              as Speed,
    ) as $Val);
  }

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherModel? weather,
      WeatherStatus weatherStatus,
      GeoStatus geoStatus,
      List<LocationModel> locations,
      String errorMessage,
      Temp tempType,
      Speed speedType});

  @override
  $WeatherModelCopyWith<$Res>? get weather;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? weatherStatus = null,
    Object? geoStatus = null,
    Object? locations = null,
    Object? errorMessage = null,
    Object? tempType = null,
    Object? speedType = null,
  }) {
    return _then(_$WeatherStateImpl(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      weatherStatus: null == weatherStatus
          ? _value.weatherStatus
          : weatherStatus // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      geoStatus: null == geoStatus
          ? _value.geoStatus
          : geoStatus // ignore: cast_nullable_to_non_nullable
              as GeoStatus,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      tempType: null == tempType
          ? _value.tempType
          : tempType // ignore: cast_nullable_to_non_nullable
              as Temp,
      speedType: null == speedType
          ? _value.speedType
          : speedType // ignore: cast_nullable_to_non_nullable
              as Speed,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {this.weather,
      this.weatherStatus = WeatherStatus.initial,
      this.geoStatus = GeoStatus.initial,
      final List<LocationModel> locations = const [],
      this.errorMessage = '',
      this.tempType = Temp.celsius,
      this.speedType = Speed.ms})
      : _locations = locations;

  @override
  final WeatherModel? weather;
  @override
  @JsonKey()
  final WeatherStatus weatherStatus;
  @override
  @JsonKey()
  final GeoStatus geoStatus;
  final List<LocationModel> _locations;
  @override
  @JsonKey()
  List<LocationModel> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final Temp tempType;
  @override
  @JsonKey()
  final Speed speedType;

  @override
  String toString() {
    return 'WeatherState(weather: $weather, weatherStatus: $weatherStatus, geoStatus: $geoStatus, locations: $locations, errorMessage: $errorMessage, tempType: $tempType, speedType: $speedType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.weatherStatus, weatherStatus) ||
                other.weatherStatus == weatherStatus) &&
            (identical(other.geoStatus, geoStatus) ||
                other.geoStatus == geoStatus) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.tempType, tempType) ||
                other.tempType == tempType) &&
            (identical(other.speedType, speedType) ||
                other.speedType == speedType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      weather,
      weatherStatus,
      geoStatus,
      const DeepCollectionEquality().hash(_locations),
      errorMessage,
      tempType,
      speedType);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final WeatherModel? weather,
      final WeatherStatus weatherStatus,
      final GeoStatus geoStatus,
      final List<LocationModel> locations,
      final String errorMessage,
      final Temp tempType,
      final Speed speedType}) = _$WeatherStateImpl;

  @override
  WeatherModel? get weather;
  @override
  WeatherStatus get weatherStatus;
  @override
  GeoStatus get geoStatus;
  @override
  List<LocationModel> get locations;
  @override
  String get errorMessage;
  @override
  Temp get tempType;
  @override
  Speed get speedType;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
