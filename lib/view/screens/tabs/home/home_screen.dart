import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hackathon/view/common_viewmodel/fraud_viewmodel.dart';
import 'package:hackathon/view/elements/connection_circle_card.dart';
import 'package:hackathon/view/elements/heading.dart';
import 'package:hackathon/view/elements/recently_reported_card.dart';
import 'package:hackathon/view/screens/tabs/home/home_screen_header.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeScreenHeader(),

          const SizedBox(height: 5),

          //* Recently reported
          const Heading(title: "Recently reported", leftText: "View all"),

          //* List of horizontal cards

          SizedBox(
            height: 150,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              itemCount: context.watch<FraudViewModel>().fraudReportList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return RecentlyReportCard(
                  model: context.watch<FraudViewModel>().fraudReportList[index],
                  title: context
                          .watch<FraudViewModel>()
                          .fraudReportList[index]
                          .title ??
                      "Title",
                  percent: context
                      .watch<FraudViewModel>()
                      .fraudReportList[index]
                      .impact,
                  details: context
                          .watch<FraudViewModel>()
                          .fraudReportList[index]
                          .description ??
                      "Details",
                );
              },
            ),
          ),
          const SizedBox(height: 10),

          //* You may expose to
          const Heading(
            title: "Connection circle",
            leftText: "View all",
            subtitle: "Fraud exposed by your friends",
          ),

          //* List of vertical cards
          Expanded(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                itemCount:
                    context.watch<FraudViewModel>().fraudReportList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ConnectionCircleCard(
                    model:
                        context.watch<FraudViewModel>().fraudReportList[index],
                    title: context
                            .watch<FraudViewModel>()
                            .fraudReportList[index]
                            .title ??
                        "Title",
                    details: context
                            .watch<FraudViewModel>()
                            .fraudReportList[index]
                            .description ??
                        "Details",
                    type: context
                        .watch<FraudViewModel>()
                        .fraudReportList[index]
                        .type,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
