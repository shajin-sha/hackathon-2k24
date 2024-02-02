import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hackathon/view/elements/connection_circle_card.dart';
import 'package:hackathon/view/elements/heading.dart';
import 'package:hackathon/view/elements/recently_reported_card.dart';
import 'package:hackathon/view/screens/home/home_screen_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();

    return Scaffold(
      body: SafeArea(
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
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return RecentlyReportCard(
                    title: "Title goes here",
                    percent: random.nextDouble(),
                    details:
                        "Details of the report goes here and it will be limited to 3 lines",
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
                  itemCount: 2,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const ConnectionCircleCard(
                      title: "Title goes here",
                      details:
                          "Details of the report goes here and it will be limited to 3 lines",
                      type: "SMS",
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
