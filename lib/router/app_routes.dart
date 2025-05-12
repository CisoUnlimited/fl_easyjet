import 'package:fl_easyjet/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_easyjet/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_max_sharp,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
      route: 'listview',
      icon: Icons.list_alt,
      name: 'ListView Screen',
      screen: const ListviewScreen(),
    ),
    MenuOption(
      route: 'remember',
      icon: Icons.verified_user,
      name: 'Remember Screen',
      screen: const RememberScreen(),
    ),
    MenuOption(
      route: 'reserva',
      icon: Icons.airplane_ticket,
      name: 'Reserva Screen',
      screen: const ReservaScreen(),
    ),
    MenuOption(
      route: 'viajes',
      icon: Icons.airplane_ticket,
      name: 'Viajes Screen',
      screen: const ViajesScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
