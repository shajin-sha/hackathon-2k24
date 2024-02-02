import 'package:flutter/material.dart';
import 'package:hackathon/const/const.dart';
import 'package:hackathon/helpers/navigation_helpers.dart';
import 'package:hackathon/theme/theme.dart';
import 'package:hackathon/view/common_viewmodel/ask_ai_view.dart';
import 'package:hackathon/view/common_viewmodel/bottom_navigation_viewmodel.dart';
import 'package:hackathon/view/common_viewmodel/fraud_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationViewModel()),
        ChangeNotifierProvider(create: (_) => FraudViewModel()),
        ChangeNotifierProvider(create: (_) => AskAIViewModel())
      ],
      child: MaterialApp(
        title: CONST.appName,
        theme: AppTheme.lightMood,
        debugShowCheckedModeBanner: false,
        initialRoute: NavigationHelper.homeScreen,
        routes: NavigationHelper.roots,
      ),
    );
  }
}
