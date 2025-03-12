import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/bootstrap.dart';

void main() {
  bootstrap(() => DevicePreview(builder: (context) => const App()));
}
