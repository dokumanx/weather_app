import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:weather_app/core/extensions/date_time_extensions.dart';
import 'package:weather_app/core/extensions/double_extensions.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';
import 'package:weather_app/core/extensions/theme_extension.dart';
import 'package:weather_app/core/extensions/widget_animation_extension.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/presentation/weather/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/presentation/weather/widgets/daily_forecast.dart';
import 'package:weather_app/features/weather/presentation/weather/widgets/hourly_forecast.dart';
import 'package:weather_app/features/weather/presentation/weather/widgets/place_search_field.dart';
import 'package:weather_app/features/weather/presentation/weather/widgets/today_stats.dart';
import 'package:weather_pack/weather_pack.dart';

/// {@template weather_body}
/// Body of the WeatherPage.
///
/// Add what it does
/// {@endtemplate}
class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherBloc, WeatherState>(
      listener: (context, state) {
        if (state.geoStatus == GeoStatus.error) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  state.errorMessage,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
      },
      builder: (context, state) {
        final weatherStatus = state.weatherStatus;
        final tempType = state.tempType;
        final weather = state.weather;

        final showData =
            weatherStatus == WeatherStatus.loaded || weather != null;

        if (weatherStatus == WeatherStatus.initial ||
            weatherStatus == WeatherStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
            ),
          );
        } else if (showData) {
          return Center(
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: weather?.scene ?? const SizedBox.shrink(),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
                    child: Container(
                      color: Colors.black.withValues(alpha: 0.3),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: SafeArea(
                    bottom: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const PlaceSearchField(),
                            const SizedBox(height: 16),
                            ...[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        weather?.name ?? '',
                                        style: context.textTheme.headlineSmall
                                            ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: getValueForScreenType(
                                            context: context,
                                            mobile: 24,
                                            tablet: 36,
                                            desktop: 48,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        weather?.daily.first.date?.formatDate ??
                                            '',
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: getValueForScreenType(
                                            context: context,
                                            mobile: context
                                                .textTheme.bodyMedium?.fontSize,
                                            tablet: 20,
                                            desktop: 28,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '°F',
                                        style: context.textTheme.bodyLarge
                                            ?.copyWith(
                                          color: AppColors.white,
                                          fontSize: getValueForScreenType(
                                            context: context,
                                            mobile: context
                                                .textTheme.bodyLarge?.fontSize,
                                            tablet: 24,
                                            desktop: 32,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Switch(
                                        value: state.tempType == Temp.celsius,
                                        onChanged: (value) {
                                          context.read<WeatherBloc>().add(
                                                WeatherEvent.changeUnits(
                                                  tempType: value
                                                      ? Temp.celsius
                                                      : Temp.fahrenheit,
                                                ),
                                              );
                                        },
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '°C',
                                        style: context.textTheme.bodyLarge
                                            ?.copyWith(
                                          color: AppColors.white,
                                          fontSize: getValueForScreenType(
                                            context: context,
                                            mobile: context
                                                .textTheme.bodyLarge?.fontSize,
                                            tablet: 24,
                                            desktop: 32,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Align(
                                child: Column(
                                  children: [
                                    Text(
                                      '${weather?.temp.roundDouble}'
                                      '${tempType.abbr}',
                                      style: context.textTheme.displayLarge
                                          ?.copyWith(
                                        color: AppColors.onPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: getValueForScreenType(
                                          context: context,
                                          mobile: 57,
                                          tablet: 80,
                                          desktop: 100,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      weather?.weatherDescription ?? '',
                                      style:
                                          context.textTheme.bodySmall?.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
                              const TodayStats(),
                              const SizedBox(height: 24),
                            ].slideUpFadeInList(appearDuration: 1000.ms),
                            const HourlyForecast(),
                            const SizedBox(height: 24),
                            const DailyForecast(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                '02d'.icon,
                Text(
                  state.errorMessage,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.onSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
