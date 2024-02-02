import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hackathon/helpers/fraud_type_helpers.dart';
import 'package:hackathon/theme/color.dart';
import 'package:hackathon/view/common_viewmodel/fraud_viewmodel.dart';
import 'package:hackathon/view/elements/app_bar.dart';
import 'package:hackathon/view/elements/button.dart';
import 'package:hackathon/view/elements/text_input_felid.dart';
import 'package:provider/provider.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 40, top: 10),
        child: TextInput(
          contentPadding:
              EdgeInsets.only(left: 20, right: 20, bottom: 17, top: 17),
          hintText: "Ask AI about the fraud",
          suffixIcon: FeatherIcons.mic,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScanXAppBar(title: "Fraud Report"),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                context.watch<FraudViewModel>().selectedReport?.title ??
                    "Title",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: UiColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),

            //* Report description
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: Text(
                    context
                            .watch<FraudViewModel>()
                            .selectedReport
                            ?.description ??
                        "Description",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: UiColor.extraDarkGreyColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start),
              ),
            ),
            const SizedBox(height: 10),

            // List of chips
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Chip(
                      deleteIcon: Icon(FeatherIcons.user,
                          color: UiColor.primaryColor, size: 15),
                      onDeleted: () {},
                      backgroundColor: UiColor.greyColor,
                      label: Text(
                          "${context.watch<FraudViewModel>().selectedReport?.affected ?? 0} Affected"),
                    ),
                    const SizedBox(width: 10),
                    Chip(
                        label: Text(
                            "Impact : ${context.watch<FraudViewModel>().selectedReport?.impact ?? 0}%")),
                    const SizedBox(width: 10),
                    Chip(
                      backgroundColor: FraudTypeHelpers.getColor(context
                              .watch<FraudViewModel>()
                              .selectedReport
                              ?.type ??
                          "SMS"),
                      label: Text(
                          "Type : ${context.watch<FraudViewModel>().selectedReport?.type ?? "SMS"}",
                          style: const TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),

            Divider(color: UiColor.greyColor),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Button(title: "Report Fraud"),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Button(
                      title: "Inappropriate",
                      buttonType: ButtonType.secondary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
