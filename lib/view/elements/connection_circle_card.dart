import 'package:flutter/material.dart';
import 'package:hackathon/helpers/fraud_type_helpers.dart';
import 'package:hackathon/theme/color.dart';

class ConnectionCircleCard extends StatelessWidget {
  final String title;
  final String details;
  final double percent;
  final String? type;
  final String? impact;
  final String? other;
  const ConnectionCircleCard({
    super.key,
    required this.title,
    required this.details,
    this.percent = 0.5,
    this.type,
    this.impact,
    this.other,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
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
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Text(title,
                    style: const TextStyle(
                        fontSize: 15.5, fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 200,
                  child: Text(
                    details,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: UiColor.extraDarkGreyColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // List of chips
                Wrap(
                  children: [
                    Chip(
                      backgroundColor:
                          FraudTypeHelpers.getColor(type ?? "unknown"),
                      label: Text("Type : ${type ?? "Unknown"}",
                          style: const TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(width: 10),
                    Chip(label: Text("Impact : ${impact ?? "0"}%")),
                    if (other != null) const SizedBox(width: 10),
                    if (other != null) Chip(label: Text(other!)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
