import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hackathon/view/common_viewmodel/bottom_navigation_viewmodel.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarScanX extends StatelessWidget {
  const BottomNavigationBarScanX({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<BottomNavigationViewModel>().currentIndex,
      onTap: (value) {
        context.read<BottomNavigationViewModel>().changeIndex(value);
      },
      unselectedIconTheme: const IconThemeData(
        color: Colors.grey,
      ),
      unselectedLabelStyle: const TextStyle(
        color: Colors.grey,
      ),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.zap),
          label: "Ask AI",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}
