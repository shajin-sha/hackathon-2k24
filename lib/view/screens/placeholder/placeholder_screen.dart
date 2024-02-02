import 'package:flutter/material.dart';
import 'package:hackathon/view/common_viewmodel/bottom_navigation_viewmodel.dart';
import 'package:hackathon/view/elements/bottom_navigation_bar.dart';
import 'package:hackathon/view/screens/tabs/ask_ai/ask_ai_screen.dart';
import 'package:hackathon/view/screens/tabs/home/home_screen.dart';
import 'package:hackathon/view/screens/tabs/profile/profile_tab.dart';
import 'package:provider/provider.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarScanX(),
      body: IndexedStack(
        index: context.watch<BottomNavigationViewModel>().currentIndex,
        children: const [
          HomeScreen(),
          AskAIScreen(),
          ProfileTab(),
        ],
      ),
    );
  }
}
