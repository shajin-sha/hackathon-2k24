import 'package:flutter/material.dart';
import 'package:hackathon/view/screens/placeholder/placeholder_screen.dart';
import 'package:hackathon/view/screens/report/report_screen.dart';

class NavigationHelper {
  static Map<String, WidgetBuilder> roots = {
    //* List of routes used in the app, this is using inbuilt flutter navigation.
    //* No need to use any third party navigation library.

    '/': (context) => const PlaceholderScreen(),
    '/report': (context) => const ReportScreen(),
  };

  //* STATIC Path names for routes, used for passing in navigator methods.
  static const String homeScreen = '/';
  static const String reportScreen = '/report';
  //* STATIC Path names for routes, used for passing in navigator methods.

  //* Use this function to navigate around the app, use routeName from above
  //* arguments are optional, use it to pass data to the next screen.
  //* callback is optional, it will be called when navigation is over.
  static void navigateTo(BuildContext context, String routeName,
      {Object? arguments, Function? callback}) {
    Navigator.pushNamed(context, routeName, arguments: arguments).then((value) {
      //* Call this function when navigation is over.
      if (callback != null) {
        callback(value);
      }
    }).whenComplete(() {
      //* Call this function when navigation is over.
      callback?.call();
    });
  }

  static void back(BuildContext context) {
    //* Use this function to go back to the previous screen.
    Navigator.pop(context);
  }

  static void replace(BuildContext context, String routeName,
      {Object? arguments, Function? callback}) {
    //* Use this function to replace the current screen with a new screen.
    Navigator.pushReplacementNamed(context, routeName).then((value) {
      if (callback != null) {
        //* Call this function when navigation is over.
        callback(value);
      }
    });
  }

  static void goHome(BuildContext context, {Function? callback}) {
    //* Use this function to go back to the home screen.
    Navigator.pushNamedAndRemoveUntil(context, homeScreen, (route) => false)
        .then((value) {
      if (callback != null) {
        //* Call this function when navigation is over.
        callback(value);
      }
    });
  }
}
