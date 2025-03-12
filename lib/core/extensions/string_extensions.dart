import 'package:flutter/material.dart';
import 'package:weather_pack/weather_pack.dart';

extension StringExtensions on String {
  /// Checks if the string is in the format `(number),(String)`:
  /// - The first part (before the comma) must be numeric.
  /// - The second part (after the comma) must be a two-letter ISO 3166
  /// country code.
  ///
  /// Examples of valid formats:
  /// - "35460,TR"
  /// - "12345,US"
  ///
  /// Returns `true` if the string matches the format, otherwise `false`.
  bool get isValidZipCodeAndCountry {
    final regex = RegExp(r'^\d+,[A-Z]{2}$');
    return regex.hasMatch(trim().toUpperCase());
  }

  bool get isCityName =>
      RegExp(r'^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$').hasMatch(this);

  ({int zipCode, String countryCode}) get asNamedZipAndCountry {
    final parts = split(',');
    if (parts.length != 2) {
      throw const FormatException(
          'Input must contain exactly one comma separating'
          ' zip code and country code.');
    }

    final zipCode = int.tryParse(parts[0].trim());
    final countryCode = parts[1].trim();

    if (zipCode == null || countryCode.isEmpty || countryCode.length != 2) {
      throw const FormatException('Invalid format. Ensure zip code is numeric'
          ' and country code is a two-letter string.(e.g. 12345,US)');
    }

    return (zipCode: zipCode, countryCode: countryCode.toUpperCase());
  }

  String get capitalizeFirstLetter => '${this[0].toUpperCase()}${substring(1)}';
}

extension NullableStringExtensions on String? {
  Widget get icon => this == null
      ? const SizedBox.shrink()
      : Image.asset(
          ImagePathWeather.getPathWeatherIcon(
            this!,
          ),
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high, // optional
          package: ImagePathWeather.packageName,
        );
}
