import 'package:intl/intl.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';

extension DateTimeExtension on DateTime {
  String get formatDate {
    return DateFormat('d MMMM, EEEE').format(this);
  }

  String get formatHour {
    return DateFormat('h a').format(this).toLowerCase();
  }

  String get formatDayShort {
    return (DateTime.now().difference(this).inDays == 0)
        ? 'Today'
        : DateFormat('EEE').format(this).capitalizeFirstLetter;
  }
}
