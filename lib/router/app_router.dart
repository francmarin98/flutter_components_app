import 'package:components_app/models/menu_options.dart';
import 'package:components_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
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
    MenuOptions(
        label: 'Animated Screen',
        icon: Icons.animation,
        routeName: 'animated',
        screen: const AnimatedScreen()),
    MenuOptions(
        label: 'Inputs Screen',
        icon: Icons.input_outlined,
        routeName: 'input',
        screen: const InputsScreen()),
    MenuOptions(
        label: 'Slider Screen',
        icon: Icons.slow_motion_video_outlined,
        routeName: 'slider',
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
