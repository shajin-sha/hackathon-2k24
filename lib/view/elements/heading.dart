import 'package:flutter/material.dart';
import 'package:hackathon/theme/color.dart';

class Heading extends StatelessWidget {
  final String title;
  final String? leftText;
  final String? subtitle;
  final Function? onTap;
  const Heading(
      {super.key,
      required this.title,
      this.leftText,
      this.onTap,
      this.subtitle});

  @override
  Widget build(BuildContext context) {
    return //* Recently reported
        Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.w500)),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: UiColor.extraDarkGreyColor,
                  ),
                ),
            ],
          ),

          //* View all
          const Spacer(),
          if (leftText != null)
            InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!();
                }
              },
              child: Text(leftText!,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
        ],
      ),
    );
  }
}
