import 'package:weather_pack/weather_pack.dart';

extension DoubleExtensions on double? {
  double convertTemp(Temp prevTemp, Temp newTemp) {
    if (this == null) {
      return 0;
    }
    if (prevTemp == newTemp) {
      return this!;
    }
    // First, convert the current value to Kelvin using the
    // previous temperature unit
    double kelvinValue;
    switch (prevTemp) {
      case Temp.kelvin:
        kelvinValue = this!;
      case Temp.celsius:
        kelvinValue = this! + 273.15;
      case Temp.fahrenheit:
        kelvinValue = (this! + 459.67) / 1.8;
    }

    // Then, convert the Kelvin value to the new temperature unit
    return newTemp.value(kelvinValue);
  }

  String convertToTempString(Temp temp) {
    if (this == null) {
      return '';
    }
    return '${temp.value(this!).toStringAsFixed(0)} ${temp.abbr}';
  }

  double convertSpeed(Speed prevSpeed, Speed newSpeed) {
    if (this == null) {
      return 0;
    }
    if (prevSpeed == newSpeed) {
      return this!;
    }

    // First, convert the current value to a base unit (e.g., meters per second)
    double baseSpeedValue;
    switch (prevSpeed) {
      case Speed.ms: // Meters per second
        baseSpeedValue = this!;
      case Speed.kph: // Kilometers per hour
        baseSpeedValue = this! / 3.6;
      case Speed.mph: // Miles per hour
        baseSpeedValue = this! / 2.2369;
    }

    // Then, convert the base unit to the new speed unit
    return newSpeed.value(baseSpeedValue);
  }

  String convertToSpeedString(Speed speed) {
    if (this == null) {
      return '';
    }
    return '${speed.value(this!).toStringAsFixed(0)} ${speed.abbr}';
  }

  double convertPressure(Pressure pressure) {
    if (this == null) {
      return 0;
    }
    return pressure.value(this!);
  }

  String convertToPressureString(Pressure pressure) {
    if (this == null) {
      return '';
    }
    return '${pressure.value(this!).toStringAsFixed(0)} ${pressure.abbr}';
  }

  String get roundDouble {
    if (this == null) {
      return '';
    }
    final roundedValue = double.parse(this!.toStringAsFixed(0));
    if (roundedValue == 0) {
      return '0';
    }
    return roundedValue.toStringAsFixed(0);
  }
}
