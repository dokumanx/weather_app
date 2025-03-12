import 'package:weather_app/features/weather/data/models/model_parser.dart';

class LocationModel {
  const LocationModel({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
    required this.state,
  });

  /// Creating [LocationModel] instance from json.
  factory LocationModel.fromJson(Map<String, dynamic> jsonData) {
    return LocationModel(
      name: unpackString(jsonData, 'name'),
      latitude: unpackDouble(jsonData, 'lat'),
      longitude: unpackDouble(jsonData, 'lon'),
      countryCode: unpackString(jsonData, 'country'),
      state: unpackString(jsonData, 'state'),
    );
  }

  final String? name;
  final double? latitude;
  final double? longitude;
  final String? countryCode;
  final String? state;

  /// Two [LocationModel]s are considered equal if their longitude and latitude
  /// are the same.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LocationModel &&
          longitude == other.longitude &&
          latitude == other.latitude);

  /// Same hashCode if longitude and latitude are the same.
  @override
  int get hashCode => Object.hash(
        runtimeType,
        latitude,
        longitude,
      );
}
