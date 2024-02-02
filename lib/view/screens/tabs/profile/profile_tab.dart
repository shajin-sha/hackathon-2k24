import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hackathon/theme/color.dart';
import 'package:hackathon/view/elements/app_bar.dart';
import 'package:hackathon/view/elements/button.dart';
import 'package:hackathon/view/elements/connection_circle_card.dart';
import 'package:hackathon/view/elements/heading.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScanXAppBar(
            hideBackButton: true,
            title: "Profile",
            trailing: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(FeatherIcons.moreHorizontal)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  child: Icon(FeatherIcons.user, size: 50),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shajin KP",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: UiColor.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const Row(
                      children: [
                        Icon(FeatherIcons.phone, size: 15),
                        SizedBox(width: 5),
                        Text("+9995339713"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Button(title: "Link contacts"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Button(
                    title: "Link social",
                    buttonType: ButtonType.secondary,
                  ),
                ),
              ),
            ],
          ),
          Divider(color: UiColor.greyColor),

          //* Report history
          const Heading(title: "Your reports"),
          // //* List of vertical cards
          // Expanded(
          //   child: SizedBox(
          //     width: MediaQuery.sizeOf(context).width,
          //     child: ListView.builder(
          //       itemCount: 2,
          //       scrollDirection: Axis.vertical,
          //       itemBuilder: (context, index) {
          //         return const ConnectionCircleCard(

          //           title: "Title goes here",
          //           details:
          //               "Details of the report goes here and it will be limited to 3 lines",
          //           type: "SMS",
          //         );
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
