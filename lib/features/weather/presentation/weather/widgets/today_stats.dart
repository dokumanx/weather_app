import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:weather_app/core/extensions/double_extensions.dart';
import 'package:weather_app/core/extensions/theme_extension.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/features/weather/presentation/weather/bloc/weather_bloc.dart';

class TodayStats extends StatelessWidget {
  const TodayStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: getValueForScreenType(
          context: context,
          mobile: 36,
          tablet: 64,
          desktop: 92,
        ),
      ),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          final weather = state.weather;

          final wind =
              '${weather?.windSpeed.roundDouble} ${state.speedType.abbr}';
          final cloudiness = '${weather?.cloudiness.roundDouble} %';
          final humidity = '${weather?.humidity.roundDouble} %';

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _StatItem(
                icon: '💨',
                title: 'Wind',
                value: wind,
              ),
              _StatItem(
                icon: '☁️',
                title: 'Cloudiness',
                value: cloudiness,
              ),
              _StatItem(
                icon: '💧',
                title: 'Humidity',
                value: humidity,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.title,
    required this.value,
  });

  final String icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          icon,
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 24,
              tablet: 36,
              desktop: 48,
            ),
          ),
        ),
        Text(
          value,
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 16,
              tablet: 28,
              desktop: 40,
            ),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          title,
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
      ],
    );
  }
}
