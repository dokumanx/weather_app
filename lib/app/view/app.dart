import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/di/injectable_configuration.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/weather/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/presentation/weather/weather.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherBloc>(
          create: (_) =>
              WeatherBloc(weatherRepository: getIt<WeatherRepository>())
                ..add(
                  const WeatherEvent.getWeatherByName(query: 'İzmir'),
                ),
        ),
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primary,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: AppColors.onPrimary,
              ),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.all(AppColors.secondary),
            trackColor: WidgetStateProperty.all(AppColors.secondary),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.primary,
          ),
          useMaterial3: true,
        ),
        home: const WeatherPage(),
      ),
    );
  }
}
