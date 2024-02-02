import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/helpers/navigation_helpers.dart';
import 'package:hackathon/theme/color.dart';

class ScanXAppBar extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Widget? trailing;
  final bool hideBackButton;
  const ScanXAppBar({
    Key? key,
    required this.title,
    this.backgroundColor,
    this.trailing,
    this.hideBackButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A Row which contain leading Button and Text widgets.
    // Leading button is used to navigate back.
    // Text widget is used to display title.
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (hideBackButton == false)
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            backgroundColor == null ? null : backgroundColor!),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 2),
                      child: IconButton(
                        splashRadius: 15,
                        splashColor: UiColor.primaryColor.withOpacity(0.2),
                        icon: Icon(CupertinoIcons.chevron_back,
                            color: UiColor.primaryColor),
                        onPressed: () {
                          NavigationHelper.back(context);
                        },
                      ),
                    )),
              Padding(
                padding: EdgeInsets.all(hideBackButton == false ? 0 : 10),
                child: Text(title,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: UiColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center),
              ),
              const Spacer(),
              trailing ?? Container(),
            ],
          ),
          Divider(color: UiColor.greyColor, thickness: 1),
        ],
      ),
    );
  }
}
