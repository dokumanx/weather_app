import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:weather_app/core/extensions/date_time_extensions.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';
import 'package:weather_app/core/extensions/theme_extension.dart';
import 'package:weather_app/core/extensions/widget_animation_extension.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/features/weather/presentation/weather/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/presentation/weather/widgets/temperature_bar.dart';

class DailyForecast extends StatelessWidget {
  const DailyForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        final dailyForecast = state.weather?.daily ?? [];

        // Calculate global minimum and maximum temperatures
        final globalMinTemp = dailyForecast
            .map((e) => e.tempMin ?? double.infinity)
            .reduce((a, b) => a < b ? a : b)
            .toInt();
        final globalMaxTemp = dailyForecast
            .map((e) => e.tempMax ?? double.negativeInfinity)
            .reduce((a, b) => a > b ? a : b)
            .toInt();

        return dailyForecast.isEmpty
            ? const SizedBox.shrink()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Next 7 days',
                    style: context.textTheme.titleMedium?.copyWith(
                      fontSize: getValueForScreenType(
                        context: context,
                        mobile: 16,
                        tablet: 26,
                        desktop: 36,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final daily = dailyForecast[index];

                      final tempMin = daily.tempMin?.toInt() ?? 0;
                      final tempMax = daily.tempMax?.toInt() ?? 0;

                      final tempMinString = '$tempMin${state.tempType.abbr}';
                      final tempMaxString = '$tempMax${state.tempType.abbr}';

                      final spacing = SizedBox(
                        width: getValueForScreenType(
                          context: context,
                          mobile: 8,
                          tablet: 14,
                          desktop: 20,
                        ),
                      );

                      return DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 2,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  daily.date?.formatDayShort ?? '',
                                  style: context.textTheme.labelLarge?.copyWith(
                                    fontSize: getValueForScreenType(
                                      context: context,
                                      mobile: 14,
                                      tablet: 24,
                                      desktop: 36,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      tempMinString,
                                      style: context.textTheme.labelLarge
                                          ?.copyWith(
                                        color: AppColors.softGrey,
                                        fontSize: getValueForScreenType(
                                          context: context,
                                          mobile: 14,
                                          tablet: 24,
                                          desktop: 36,
                                        ),
                                      ),
                                    ),
                                    spacing,
                                    Expanded(
                                      child: TemperatureBar(
                                        minTemp: tempMin,
                                        maxTemp: tempMax,
                                        globalMinTemp: globalMinTemp,
                                        globalMaxTemp: globalMaxTemp,
                                      ),
                                    ),
                                    spacing,
                                    Text(
                                      tempMaxString,
                                      style: context.textTheme.labelLarge
                                          ?.copyWith(
                                        fontSize: getValueForScreenType(
                                          context: context,
                                          mobile: 14,
                                          tablet: 24,
                                          desktop: 36,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: getValueForScreenType(
                                  context: context,
                                  mobile: 8,
                                  tablet: 16,
                                  desktop: 40,
                                ),
                              ),
                              SizedBox.square(
                                dimension: getValueForScreenType(
                                  context: context,
                                  mobile: 40,
                                  tablet: 60,
                                  desktop: 80,
                                ),
                                child: daily.weatherIcon?.icon,
                              ),
                            ],
                          ),
                        ),
                      ).slideUpFadeInAnimation(index, delay: 500.ms);
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                    itemCount: dailyForecast.length,
                  ),
                ],
              );
      },
    );
  }
}
