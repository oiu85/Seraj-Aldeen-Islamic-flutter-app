import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// Extension for adding fade in animation to widgets
extension FadeInAnimation on Widget {
  Widget fadeInBenefits({
    required int delay,
    int duration = 600,
    Curve curve = Curves.easeOutCubic,
  }) {
    return animate()
        .fadeIn(
          duration: duration.ms,
          delay: delay.ms,
          curve: curve,
        );
  }
}

/// Extension for adding slide animation to widgets
extension SlideAnimation on Widget {
  Widget slideXBenefits({
    required int delay,
    required double begin,
    double end = 0,
    int duration = 600,
    Curve curve = Curves.easeOutCubic,
  }) {
    return animate()
        .slideX(
          begin: begin,
          end: end,
          duration: duration.ms,
          delay: delay.ms,
          curve: curve,
        );
  }

  Widget slideYBenefits({
    required int delay,
    required double begin,
    double end = 0,
    int duration = 600,
    Curve curve = Curves.easeOutCubic,
  }) {
    return animate()
        .slideY(
          begin: begin,
          end: end,
          duration: duration.ms,
          delay: delay.ms,
          curve: curve,
        );
  }
}

/// Extension for adding scale animation to widgets
extension ScaleAnimation on Widget {
  Widget scaleBenefits({
    required int delay,
    Offset begin = const Offset(0.9, 0.9),
    Offset end = const Offset(1.0, 1.0),
    int duration = 400,
    Curve curve = Curves.easeOutBack,
  }) {
    return animate()
        .scale(
          begin: begin,
          end: end,
          duration: duration.ms,
          delay: delay.ms,
          curve: curve,
        );
  }
}

/// Combined animations for category title
Widget animateCategoryTitle({
  required Widget child,
  required int rowIndex,
  Key? key,
}) {
  final delay = 200 + rowIndex * 200;
  return child
      .animate(key: key)
      .fadeIn(duration: 600.ms, delay: delay.ms)
      .slideX(begin: -0.2, end: 0, duration: 600.ms, delay: delay.ms);
}

/// Combined animations for "الكل" button
Widget animateAllButton({
  required Widget child,
  required int rowIndex,
  Key? key,
}) {
  final delay = 300 + rowIndex * 200;
  return child
      .animate(key: key)
      .fadeIn(duration: 600.ms, delay: delay.ms)
      .slideX(begin: 0.2, end: 0, duration: 600.ms, delay: delay.ms);
}

/// Combined animations for article cards in horizontal list
Widget animateArticleCard({
  required Widget child,
  required int rowIndex,
  required int cardIndex,
  Key? key,
}) {
  final fadeDelay = 400 + rowIndex * 150 + cardIndex * 100;
  final scaleDelay = 500 + rowIndex * 150 + cardIndex * 100;

  return child
      .animate(key: key)
      .fadeIn(
        duration: 500.ms,
        delay: fadeDelay.ms,
        curve: Curves.easeOutCubic,
      )
      .slideX(
        begin: 0.3,
        end: 0,
        duration: 500.ms,
        delay: fadeDelay.ms,
        curve: Curves.easeOutCubic,
      )
      .scale(
        begin: const Offset(0.9, 0.9),
        end: const Offset(1.0, 1.0),
        duration: 400.ms,
        delay: scaleDelay.ms,
        curve: Curves.easeOutBack,
      );
}

/// Combined animations for category row container
Widget animateCategoryRow({
  required Widget child,
  required int rowIndex,
  Key? key,
}) {
  final delay = 100 + rowIndex * 200;
  return child
      .animate(key: key)
      .fadeIn(
        duration: 800.ms,
        delay: delay.ms,
        curve: Curves.easeOutCubic,
      )
      .slideY(
        begin: 0.2,
        end: 0,
        duration: 600.ms,
        delay: delay.ms,
        curve: Curves.easeOutCubic,
      );
}

/// Combined animations for grid items in benefits categories page
Widget animateGridItem({
  required Widget child,
  required int index,
  Key? key,
}) {
  final fadeDelay = 100 + index * 50;
  final scaleDelay = 150 + index * 50;

  return child
      .animate(key: key)
      .fadeIn(
        duration: 500.ms,
        delay: fadeDelay.ms,
        curve: Curves.easeOutCubic,
      )
      .scale(
        begin: const Offset(0.9, 0.9),
        end: const Offset(1.0, 1.0),
        duration: 400.ms,
        delay: scaleDelay.ms,
        curve: Curves.easeOutBack,
      );
}

