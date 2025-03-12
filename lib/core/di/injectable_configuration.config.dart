// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:weather_app/features/weather/data/datasource/weather_remote_source.dart'
    as _i910;
import 'package:weather_app/features/weather/data/repositories/weather_repository_impl.dart'
    as _i530;
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart'
    as _i504;
import 'package:weather_app/modules/network_module.dart' as _i315;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.factory<String>(
      () => networkModule.weatherBaseUrl,
      instanceName: 'weatherBaseUrl',
    );
    gh.factory<String>(
      () => networkModule.locationBaseUrl,
      instanceName: 'locationBaseUrl',
    );
    gh.singleton<_i361.Dio>(
      () => networkModule
          .locationDio(gh<String>(instanceName: 'locationBaseUrl')),
      instanceName: 'locationDio',
    );
    gh.singleton<_i361.Dio>(
      () =>
          networkModule.weatherDio(gh<String>(instanceName: 'weatherBaseUrl')),
      instanceName: 'weatherDio',
    );
    gh.lazySingleton<_i910.WeatherRemoteSource>(
        () => _i910.WeatherRemoteSourceImpl(
              wService: gh<_i361.Dio>(instanceName: 'weatherDio'),
              geoService: gh<_i361.Dio>(instanceName: 'locationDio'),
            ));
    gh.lazySingleton<_i504.WeatherRepository>(() => _i530.WeatherRepositoryImpl(
        remoteSource: gh<_i910.WeatherRemoteSource>()));
    return this;
  }
}

class _$NetworkModule extends _i315.NetworkModule {}
