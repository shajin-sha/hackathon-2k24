import 'package:flutter/material.dart';
import 'package:hackathon/const/const.dart';

class FraudTypeHelpers {
  static Color getColor(String type) {
    // Find the map with the given type
    Map<String, dynamic>? fraudType = CONST.typesOfFraud.firstWhere(
      (element) => element['type'] == type,
      orElse: () => {'color': Colors.black}, // Default color if not found
    );

    // Return the color
    return fraudType['color'];
  }
}
