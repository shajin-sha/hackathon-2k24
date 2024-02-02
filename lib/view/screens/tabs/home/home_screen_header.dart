import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hackathon/theme/color.dart';
import 'package:hackathon/view/elements/add_fraud_report_new_bottom_sheet.dart';
import 'package:hackathon/view/elements/text_input_felid.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    //* Search for fraud website, text message etc..
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* App logo and branding
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ScanX",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Detect and predating frauds",
                      style: TextStyle(
                        fontSize: 13,
                        color: UiColor.extraDarkGreyColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showFlexibleBottomSheet(
                      minHeight: 0,
                      initHeight: 0.8,
                      maxHeight: 1,
                      context: context,
                      builder: buildBottomSheet,
                      anchors: [0, 0.8, 1],
                      isSafeArea: true,
                      bottomSheetBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: UiColor.greyColor,
                    child:
                        Icon(CupertinoIcons.add, color: UiColor.primaryColor),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            //* Search
            const TextInput(
                contentPadding: EdgeInsets.all(17),
                hintText: "Search for fraud",
                suffixIcon: FeatherIcons.mic,
                prefixWidget: Icon(FeatherIcons.search)),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
