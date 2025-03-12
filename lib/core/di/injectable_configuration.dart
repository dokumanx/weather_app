import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/di/injectable_configuration.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  getIt.init();
}
