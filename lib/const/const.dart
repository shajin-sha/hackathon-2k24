import 'package:flutter/material.dart';

class CONST {
  static String appName = "Hackathon";

  static List<Map<String, dynamic>> typesOfFraud = [
    {
      "color": Colors.red.withOpacity(0.5),
      "type": "Banking",
    },
    {
      "color": Colors.orange.withOpacity(0.5),
      "type": "Credit card",
    },
    {
      "color": Colors.yellow.withOpacity(0.5),
      "type": "Money chain",
    },
    {
      "color": Colors.green.withOpacity(0.5),
      "type": "SMS",
    }
  ];
}
