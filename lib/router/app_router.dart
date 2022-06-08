import 'package:components_app/models/menu_options.dart';
import 'package:components_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        label: 'Home Screen',
        icon: Icons.home_max_outlined,
        routeName: 'home',
        screen: const HomeScreen()),
    MenuOptions(
        label: 'List Wiew Screen One',
        icon: Icons.add_link_outlined,
        routeName: 'listviewone',
        screen: const ListViewScreenOne()),
    MenuOptions(
        label: 'List Wiew Screen Two',
        icon: Icons.list_alt_outlined,
        routeName: 'listviewtwo',
        screen: const ListViewScreenTwo()),
    MenuOptions(
        label: 'Alert Screen',
        icon: Icons.add_alert_outlined,
        routeName: 'alerts',
        screen: const AlertScreen()),
    MenuOptions(
        label: 'Card Screen',
        icon: Icons.car_rental,
        routeName: 'cards',
        screen: const CardScreen()),
    MenuOptions(
        label: 'Avatar Screen',
        icon: Icons.supervised_user_circle_outlined,
        routeName: 'avatar',
        screen: const AvatarScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes
          .addAll({option.routeName: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListViewScreenTwo());
  }
}



  // 'homescreen': (BuildContext context) => const HomeScreen(),
