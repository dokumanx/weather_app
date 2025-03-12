import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:weather_app/core/extensions/date_time_extensions.dart';
import 'package:weather_app/core/extensions/double_extensions.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';
import 'package:weather_app/core/extensions/theme_extension.dart';
import 'package:weather_app/core/extensions/widget_animation_extension.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/features/weather/presentation/weather/bloc/weather_bloc.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        final hourly = state.weather?.hourly ?? [];
        final weatherIcon = state.weather?.weatherIcon;
        return hourly.isEmpty
            ? const SizedBox.shrink()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Next 24 hours',
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
                  SizedBox(
                    height: getValueForScreenType(
                      context: context,
                      mobile: 100,
                      tablet: 140,
                      desktop: 180,
                    ),
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 16),
                      itemCount: hourly.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final hour = hourly[index];
                        return DecoratedBox(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            color: AppColors.secondary,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: getValueForScreenType(
                                context: context,
                                mobile: 12,
                                tablet: 24,
                                desktop: 36,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  hour.date?.formatHour ?? '',
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: AppColors.onSecondary,
                                    fontSize: getValueForScreenType(
                                      context: context,
                                      mobile: 12,
                                      tablet: 18,
                                      desktop: 24,
                                    ),
                                  ),
                                ),
                                SizedBox.square(
                                  dimension: getValueForScreenType(
                                    context: context,
                                    mobile: 40,
                                    tablet: 55,
                                    desktop: 70,
                                  ),
                                  child: weatherIcon.icon,
                                ),
                                Text(
                                  '${hour.temp.roundDouble}'
                                  '${state.tempType.abbr}',
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: AppColors.white,
                                    fontSize: getValueForScreenType(
                                      context: context,
                                      mobile: 12,
                                      tablet: 18,
                                      desktop: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ).slideLeftFadeInAnimation(),
                  ),
                ],
              );
      },
    );
  }
}
