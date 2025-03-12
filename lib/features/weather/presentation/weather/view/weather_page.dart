import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/presentation/weather/widgets/weather_body.dart';

/// {@template weather_page}
/// A description for WeatherPage
/// {@endtemplate}
class WeatherPage extends StatelessWidget {
  /// {@macro weather_page}
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: WeatherView(),
    );
  }
}

/// {@template weather_view}
/// Displays the Body of WeatherView
/// {@endtemplate}
class WeatherView extends StatelessWidget {
  /// {@macro weather_view}
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const WeatherBody();
  }
}
