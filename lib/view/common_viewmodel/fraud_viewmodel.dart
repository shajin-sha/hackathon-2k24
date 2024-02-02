// FraudModel
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:hackathon/const/const.dart';
import 'package:hackathon/helpers/api_helper.dart';
import 'package:hackathon/helpers/status_code.dart';
import 'package:hackathon/model/fraud_model.dart';

class FraudViewModel extends ChangeNotifier {
  List<String> typesOfFraud = ["Banking", "Credit card", "Money chain", "SMS"];
  String selectedType = "Banking";
  FraudModel addFraudModel = const FraudModel();
  FraudModel? selectedReport;
  final List<FraudModel> fraudReportList = [];
  final List<FraudModel> fraudReportListCircle = [];

  FraudViewModel() {
    loadRecentlyReportedFrauds();
  }

  void addFraudReport() {
    addFraudModel = addFraudModel.copyWith(
      firstReported: DateTime.now(),
      lastUpdated: DateTime.now(),
      userMobile: "9995339813",
    );
    API
        .post(
      CONST.addFraudReport,
      body: addFraudModel.toJson(),
    )
        .then((response) {
      if (response is Success) {
        print(response.data);
        loadRecentlyReportedFrauds();
      }
    });
  }

  void reportAsFraudFraudReport(BuildContext context) {
    selectedReport = selectedReport!.copyWith(
        lastUpdated: DateTime.now(), affected: selectedReport!.affected + 1);
    API
        .post(
      CONST.addFraudReport,
      body: selectedReport?.toJson(),
    )
        .then((response) {
      if (response is Success) {
        loadRecentlyReportedFrauds();
      }
    });

    notifyListeners();

    //* Show the snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(10),
        backgroundColor: Colors.green,
        content:
            const Text("Reported as fraud", style: TextStyle(fontSize: 16)),
        duration: const Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void reportAsInappropriateFraudReport(BuildContext context) {
    API
        .post(
      CONST.addFraudReport,
      body: selectedReport
          ?.copyWith(
            lastUpdated: DateTime.now(),
            inappropriateCount: selectedReport!.inappropriateCount + 1,
          )
          .toJson(),
    )
        .then((response) {
      if (response is Success) {
        print(response.data);
        loadRecentlyReportedFrauds();
      }
    });

    notifyListeners();

    //* Show the snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Reported as inappropriate"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void selectTypeOfFraud(String type) {
    selectedType = type;
    addFraudModel = addFraudModel.copyWith(type: type);
    notifyListeners();
  }

  void loadRecentlyReportedFrauds() async {
    List<Contact> contacts = await FlutterContacts.getContacts();
    List<String> phoneNumber = [];

    for (var element in contacts) {
      phoneNumber.add(element.phones.first.number);
    }

    //* Get the recently reported frauds
    API.get(CONST.recentFraudReport, {"mobileList": phoneNumber.toList()}).then(
        (response) {
      print(response);
      if (response is Success) {
        print(response.data);
        fraudReportList.clear();
        fraudReportList.addAll((response.data as List)
            .map((e) => FraudModel.fromJson(e as Map<String, dynamic>))
            .toList());
        notifyListeners();
      }
    });

    //* Get from friends circle
    API.post(CONST.recentFraudReportCircle,
        body: {"mobile": "9995339813"}).then((response) {
      print(response);
      if (response is Success) {
        print(response.data);
        fraudReportListCircle.clear();
        fraudReportListCircle.addAll((response.data as List)
            .map((e) => FraudModel.fromJson(e as Map<String, dynamic>))
            .toList());
        notifyListeners();
      }
    });
  }

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
