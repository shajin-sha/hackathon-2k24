import 'package:flutter/material.dart';
import 'package:hackathon/model/fraud_model.dart';
import 'package:hackathon/view/common_viewmodel/fraud_viewmodel.dart';
import 'package:hackathon/view/elements/button.dart';
import 'package:hackathon/view/elements/heading.dart';
import 'package:hackathon/view/elements/text_input_felid.dart';
import 'package:provider/provider.dart';

Widget buildBottomSheet(
  BuildContext context,
  ScrollController scrollController,
  double bottomSheetOffset,
) {
  return Material(
    child: Container(
      child: ListView(
        controller: scrollController,
        children: [
          const SizedBox(height: 50),
          const Heading(
              title: "Report new fraud", subtitle: "Report new fraud"),
          const SizedBox(height: 10),
          TextInput(
            maxLines: 1,
            hintText: "Title",
            onChanged: (r) => context.read<FraudViewModel>().onTitleChange(r),
            labelText: "Title of fraud",
          ),
          const SizedBox(height: 10),
          TextInput(
            maxLines: 3,
            hintText: "Details",
            labelText: "Details of fraud",
            onChanged: (r) =>
                context.read<FraudViewModel>().onDescriptionChange(r),
          ),

          //* List of types
          const SizedBox(height: 10),

          Wrap(
            children: [
              for (var type in context.read<FraudViewModel>().typesOfFraud)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChoiceChip(
                    label: Text(
                      type,
                      style: TextStyle(
                        color: context
                                    .watch<FraudViewModel>()
                                    .addFraudModel
                                    .type ==
                                type
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    selectedColor: Colors.blue,
                    selected:
                        context.watch<FraudViewModel>().addFraudModel.type ==
                            type,
                    onSelected: (r) {
                      //* Add or remove the type
                      if (r) {
                        context.read<FraudViewModel>().selectTypeOfFraud(type);
                      }
                    },
                  ),
                )
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Button(
                title: "Report Now",
                onPressed: () {
                  context.read<FraudViewModel>().addFraudReport();
                },
              ),
            ),
          )
        ],
      ),
    ),
  );
}
