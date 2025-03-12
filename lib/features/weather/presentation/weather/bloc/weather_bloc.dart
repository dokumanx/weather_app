import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';
import 'package:weather_app/features/weather/data/models/location_model.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_pack/weather_pack.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({required this.weatherRepository}) : super(const WeatherState()) {
    on<WeatherEvent>(
      (event, emit) async {
        await event.map(
          getWeatherByName: (value) async => _onGetWeatherByName(value, emit),
          getWeatherByLocation: (value) async =>
              _onGetWeatherByLocation(value, emit),
          getLocationByName: (value) async => _onGetLocationByName(value, emit),
          changeUnits: (value) async => _onChangeUnits(value, emit),
          refresh: (value) async => _onRefresh(value, emit),
        );
      },
      transformer: (events, mapper) {
        bool shouldDebounce(WeatherEvent event) {
          return event is _GetLocationByName &&
              state.geoStatus != GeoStatus.initial;
        }

        final debouncedEvents = events.where(shouldDebounce);

        return events.mergeWith([
          debouncedEvents
              .debounceTime(const Duration(milliseconds: 1000))
              .flatMap(mapper),
          events.where((event) => !shouldDebounce(event)).flatMap(mapper),
        ]);
      },
    );
  }

  final WeatherRepository weatherRepository;

  void emitGeoError({
    required String message,
    required Emitter<WeatherState> emit,
  }) {
    emit(
      state.copyWith(
        geoStatus: GeoStatus.error,
        errorMessage: message,
        locations: [],
      ),
    );
    emit(state.copyWith(geoStatus: GeoStatus.initial));
  }

  Future<Either<WeatherException, List<LocationModel>>> _getLocationResult(
    String query, {
    required Emitter<WeatherState> emit,
  }) async {
    if (query.replaceAll(' ', '').isValidZipCodeAndCountry) {
      try {
        final code = query.asNamedZipAndCountry;

        return await weatherRepository.getLocationByZipCode(
          zipCode: code.zipCode.toString(),
          countryCode: code.countryCode,
        );
      } on FormatException catch (e) {
        return left(LocationByZipCodeException(e.message));
      }
    } else {
      return weatherRepository.getLocationByName(query);
    }
  }

  bool get isInitialLoad =>
      state.weather == null && state.weatherStatus == WeatherStatus.initial;

  Future<void> _onGetWeatherByName(
    _GetWeatherByName event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(geoStatus: GeoStatus.loading));

    final result = await _getLocationResult(event.query, emit: emit);

    await result.fold(
      (failure) async {
        if (isInitialLoad) {
          emit(
            state.copyWith(
              errorMessage: failure.message,
              weatherStatus: WeatherStatus.error,
            ),
          );
        } else {
          emitGeoError(message: failure.message, emit: emit);
        }
      },
      (locationData) async {
        if (locationData.isEmpty) {
          if (isInitialLoad) {
            emit(
              state.copyWith(
                errorMessage: 'No location found with the given name.',
                weatherStatus: WeatherStatus.error,
              ),
            );
          } else {
            emitGeoError(
              message: 'No location found with the given name.',
              emit: emit,
            );
          }
        } else {
          final firstLocation = locationData.first;

          if (firstLocation.latitude == null ||
              firstLocation.longitude == null) {
            if (isInitialLoad) {
              emit(
                state.copyWith(
                  errorMessage: 'No location found with the given name.',
                  weatherStatus: WeatherStatus.error,
                ),
              );
            } else {
              emitGeoError(
                message: 'No location found with the given name.',
                emit: emit,
              );
            }

            return;
          }

          emit(state.copyWith(geoStatus: GeoStatus.loaded));

          emit(state.copyWith(weatherStatus: WeatherStatus.loading));

          final weatherResult = await weatherRepository.getWeatherByLocation(
            firstLocation.latitude!,
            firstLocation.longitude!,
            tempUnit,
          );

          weatherResult.fold(
            (failure) => emit(
              state.copyWith(
                weatherStatus: WeatherStatus.error,
                errorMessage: failure.message,
              ),
            ),
            (weatherData) {
              emit(
                state.copyWith(
                  weatherStatus: WeatherStatus.loaded,
                  weather: weatherData.copyWith(name: firstLocation.name),
                ),
              );
            },
          );
        }
      },
    );
  }

  Future<void> _onGetWeatherByLocation(
    _GetWeatherByLocation event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(weatherStatus: WeatherStatus.loading));

    final result = await weatherRepository.getWeatherByLocation(
      event.latitude,
      event.longitude,
      tempUnit,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            weatherStatus: WeatherStatus.error,
            errorMessage: failure.message,
          ),
        );
      },
      (weatherData) {
        emit(
          state.copyWith(
            weatherStatus: WeatherStatus.loaded,
            weather: weatherData.copyWith(name: event.cityName),
          ),
        );
      },
    );
  }

  Future<void> _onGetLocationByName(
    _GetLocationByName event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(geoStatus: GeoStatus.loading));

    final result = await _getLocationResult(event.query, emit: emit);

    result.fold(
      (failure) {
        emitGeoError(message: failure.message, emit: emit);
      },
      (locationData) {
        if (locationData.isEmpty) {
          emitGeoError(
            message: 'No location found with the given name.',
            emit: emit,
          );
        } else {
          emit(
            state.copyWith(
              geoStatus: GeoStatus.loaded,
              locations: locationData,
            ),
          );
        }
      },
    );
  }

  Future<void> _onRefresh(_Refresh value, Emitter<WeatherState> emit) async {
    if (state.weather != null &&
        state.weather?.latitude != null &&
        state.weather?.longitude != null) {
      add(
        WeatherEvent.getWeatherByLocation(
          latitude: state.weather!.latitude!,
          longitude: state.weather!.longitude!,
          cityName: state.weather!.name ?? '',
        ),
      );
    }
  }

  void _onChangeUnits(_ChangeUnits value, Emitter<WeatherState> emit) {
    final tempType = value.tempType ?? state.tempType;
    final speedType = value.speedType ?? state.speedType;

    final prevTemp = state.tempType;
    final newTemp = tempType;

    final prevSpeed = state.speedType;
    final newSpeed = speedType;

    final weather = state.weather!.convertAllUnits(
      prevTemp: prevTemp,
      nextTemp: newTemp,
      prevSpeed: prevSpeed,
      nextSpeed: newSpeed,
    );

    emit(
      state.copyWith(
        tempType: tempType,
        speedType: speedType,
        weather: weather,
      ),
    );
  }

  String get tempUnit {
    return state.tempType == Temp.fahrenheit ? 'imperial' : 'metric';
  }
}
