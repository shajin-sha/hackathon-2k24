import 'package:flutter/material.dart';
import 'package:hackathon/helpers/impact_helper.dart';
import 'package:hackathon/helpers/navigation_helpers.dart';
import 'package:hackathon/model/fraud_model.dart';
import 'package:hackathon/theme/color.dart';
import 'package:hackathon/view/common_viewmodel/fraud_viewmodel.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class RecentlyReportCard extends StatelessWidget {
  final String title;
  final String details;
  final double percent;
  final FraudModel model;
  const RecentlyReportCard({
    super.key,
    required this.title,
    required this.details,
    this.percent = 0.5,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          context.read<FraudViewModel>().selectReport(model);
          NavigationHelper.navigateTo(context, NavigationHelper.reportScreen);
        },
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: UiColor.greyColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              CircularPercentIndicator(
                radius: 35,
                lineWidth: 9,
                // progressColor: ImpactHelper.getImpactColor(percent),
                progressColor: UiColor.primaryColor,
                center: const Text("50%"),
                percent: percent,
                footer: const Padding(
                    padding: EdgeInsets.only(top: 8), child: Text("level")),
                animation: true,
                animationDuration: 1200,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Text(title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 200,
                    child: Text(
                      details,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        color: UiColor.extraDarkGreyColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
