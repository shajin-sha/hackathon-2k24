import 'package:flutter/material.dart';
import 'package:hackathon/const/const.dart';
import 'package:hackathon/helpers/navigation_helpers.dart';
import 'package:hackathon/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: CONST.appName,
      theme: AppTheme.lightMood,
      debugShowCheckedModeBanner: false,
      initialRoute: NavigationHelper.homeScreen,
      routes: NavigationHelper.roots,
    );
  }
}
