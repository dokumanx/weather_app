import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TemperatureBar extends StatelessWidget {
  const TemperatureBar({
    required this.minTemp,
    required this.maxTemp,
    required this.globalMinTemp,
    required this.globalMaxTemp,
    super.key,
  });

  final int minTemp;
  final int maxTemp;
  final int globalMinTemp;
  final int globalMaxTemp;

  @override
  Widget build(BuildContext context) {
    final normalizedMin =
        (minTemp - globalMinTemp) / (globalMaxTemp - globalMinTemp);
    final normalizedMax =
        (maxTemp - globalMinTemp) / (globalMaxTemp - globalMinTemp);

    return LayoutBuilder(
      builder: (context, constraints) {
        final barWidth = constraints.maxWidth;

        final minPosition = barWidth * normalizedMin;
        final maxPosition = barWidth * normalizedMax;

        return Stack(
          children: [
            Container(
              height: getValueForScreenType(
                context: context,
                mobile: 5,
                tablet: 8,
                desktop: 11,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Positioned(
              left: minPosition,
              right: barWidth - maxPosition,
              child: Container(
                height: getValueForScreenType(
                  context: context,
                  mobile: 5,
                  tablet: 8,
                  desktop: 11,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue[300]!,
                      Colors.blue[700]!,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
