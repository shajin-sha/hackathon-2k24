import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hackathon/theme/color.dart';
import 'package:hackathon/view/elements/heading.dart';
import 'package:hackathon/view/elements/text_input_felid.dart';

class AskAIScreen extends StatelessWidget {
  const AskAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 228,
        child: Column(
          children: [
            const Heading(title: "Suggestion :"),
            SizedBox(
              height: 75,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: UiColor.greyColor),
                      height: 75,
                      width: 240,
                      child: const Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(FeatherIcons.zap)),
                          SizedBox(width: 10),
                          Center(
                            child: Text("How to recover from fraud"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: UiColor.greyColor),
                      height: 75,
                      width: 250,
                      child: const Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(FeatherIcons.zap)),
                          SizedBox(width: 10),
                          Center(child: Text("How to recover from fraud")),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 10, bottom: 40, top: 10),
              child: TextInput(
                contentPadding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 17, top: 17),
                hintText: "Ask AI about the fraud",
                suffixIcon: FeatherIcons.mic,
              ),
            ),
          ],
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
