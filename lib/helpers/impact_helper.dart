import 'dart:ui';

import 'package:flutter/material.dart';

class ImpactHelper {
  static Color getImpactColor(double impact) {
    // Ensure impact is within the valid range
    impact = impact.clamp(0.0, 1.0);

    // Define color ranges based on impact value
    if (impact < 0.1) {
      return Colors.green.withOpacity(0.45);
    } else if (impact < 0.2) {
      return Colors.lightGreen.withOpacity(0.45);
    } else if (impact < 0.3) {
      return Colors.yellow.withOpacity(0.45);
    } else if (impact < 0.4) {
      return Colors.amber.withOpacity(0.45);
    } else if (impact < 0.5) {
      return Colors.orange.withOpacity(0.45);
    } else if (impact < 0.6) {
      return Colors.deepOrange.withOpacity(0.45);
    } else if (impact < 0.7) {
      return Colors.red.withOpacity(0.45);
    } else if (impact < 0.8) {
      return Colors.deepPurple.withOpacity(0.45);
    } else if (impact < 0.9) {
      return Colors.purple.withOpacity(0.45);
    } else {
      return Colors.deepPurpleAccent.withOpacity(0.45);
    }
  }

  static String getImpactInPercentage(double impact) {
    return (impact * 100).toStringAsFixed(0);
  }
}
