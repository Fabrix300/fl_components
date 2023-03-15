import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listView1', icon: Icons.list_alt, name: 'ListView tipo 1', screen: const ListView1Screen()),
    MenuOption(route: 'listView2', icon: Icons.list, name: 'ListView tipo 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Tarjetas', screen: const CardScreen()),    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listView1': (context) => const ListView1Screen(),
  //   'listView2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }
}