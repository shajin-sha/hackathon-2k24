import 'package:flutter/material.dart';

class CONST {
  static String appName = "Hackathon";
  static String baseURL = "http://localhost:3000";
  static String recentFraudReport = "$baseURL/api/fraud/list/recent";
  static String recentFraudReportCircle = "$baseURL/api/fraud/list/connection";
  // addFraudReport
  static String addFraudReport = "$baseURL/api/fraud/add";

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
