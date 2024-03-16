import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension SiteWidgetAnimation on Widget {
  Widget siteWidgetAnimation() {
    return animate().fadeIn().moveY(begin: 10, end: 0);
  }

  Widget siteWidgetAnimationDelayed({int delayedFactor = 1}) {
    return animate().fade(delay:  Duration(milliseconds: 300 * delayedFactor)).moveY(
          begin: 10,
          end: 0,
          delay: const Duration(milliseconds: 300),
        );
  }
}
