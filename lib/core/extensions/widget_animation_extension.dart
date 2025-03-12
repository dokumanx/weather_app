import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension ListAnimationExtension on List<Widget> {
  AnimateList slideUpFadeInList({
    bool show = true,
    Duration? delayDuration,
    Duration? appearDuration,
  }) =>
      animate(
        interval: 30.ms,
      ).fadeIn(duration: 300.ms).slideY(
            begin: 0.2,
            end: 0,
            duration: 400.ms,
            curve: Curves.easeOutCubic,
          );
}

extension WidgetAnimationExtension on Widget {
  Widget slideUpFadeInAnimation(int index, {Duration delay = Duration.zero}) =>
      animate(delay: delay)
          .slideY(
            begin: 0.04 * (index + 1),
            end: 0,
            duration: 400.ms,
            curve: Curves.easeIn,
            delay: (30 * (index + 1)).ms,
          )
          .fadeIn(
            begin: 0.001 * (index + 1),
            duration: (50 + ((index + 1) * 50)).ms,
            curve: Curves.easeIn,
          );

  Widget slideLeftFadeInAnimation({Duration delay = Duration.zero}) =>
      animate(delay: delay)
          .slideX(
            begin: 0.02,
            end: 0,
            duration: 400.ms,
            curve: Curves.easeIn,
          )
          .fadeIn(
            begin: 0.1,
            duration: 400.ms,
            curve: Curves.easeIn,
          );
}
