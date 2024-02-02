// FraudModel
import 'package:flutter/material.dart';
import 'package:hackathon/model/fraud_model.dart';

class FraudViewModel extends ChangeNotifier {
  FraudModel addFraudModel = const FraudModel();
  FraudModel? selectedReport;
  final List<FraudModel> fraudReportList = [
    FraudModel(
      title: "SMS Fraud | Phishing",
      description:
          "This is a phishing scam that is being circulated through SMS with a link to a fake website (www.abc.com).",
      affected: 100,
      firstReported: DateTime.now(),
      impact: 0.8,
      inappropriateCount: 2,
      type: "SMS",
      lastUpdated: DateTime.now(),
    ),
    FraudModel(
        title: "Email Fraud | Phishing",
        description:
            "This is a phishing scam that is being circulated through email with a link to a fake website (www.abc.com).",
        affected: 100,
        firstReported: DateTime.now(),
        impact: 0.2,
        inappropriateCount: 2,
        type: "Credit card"),
  ];

  void selectReport(FraudModel report) {
    selectedReport = report;
    notifyListeners();
  }

  void onTitleChange(String title) {
    addFraudModel = addFraudModel.copyWith(title: title);
    notifyListeners();
  }

  void onDescriptionChange(String description) {
    addFraudModel = addFraudModel.copyWith(description: description);
    notifyListeners();
  }

  void onTypeChange(String type) {
    addFraudModel = addFraudModel.copyWith(type: type);
    notifyListeners();
  }

  void onImpactChange(double impact) {
    addFraudModel = addFraudModel.copyWith(impact: impact);
    notifyListeners();
  }

  void onAffectedChange(int affected) {
    addFraudModel = addFraudModel.copyWith(affected: affected);
    notifyListeners();
  }
}
