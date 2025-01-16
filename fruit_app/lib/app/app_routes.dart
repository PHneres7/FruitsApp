import 'package:flutter/material.dart';
import '../pages/initial_page.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static const mainPage = 'main';
  static const initialPage = 'initial';

  static Map<String, WidgetBuilder> routes = {
    mainPage: (context) => const MainPage(),
    initialPage: (context) => const InitialPage(),
  };
}
