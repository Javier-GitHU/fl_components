import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../srceens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home', 
      icon: Icons.house_rounded, 
      name: 'Home Screen', 
      screen: const HomeScreen()),
    MenuOption(
      route: 'listview1', 
      icon: Icons.list_alt, 
      name: 'Listview tipo1', 
      screen: const Listview1Screen()),
    MenuOption(
      route: 'listview2', 
      icon: Icons.list, 
      name: 'Listview tipo2', 
      screen: const Listview2Screen()),
    MenuOption(
      route: 'alert', 
      icon: Icons.add_alert_outlined, 
      name: 'Alerta', 
      screen: const AlertSreen()),
    MenuOption(
      route: 'card', 
      icon: Icons.card_giftcard, 
      name: 'Cards (Tarjetas)', 
      screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for ( final option in MenuOptions){
      AppRoutes.addAll({option.route : ( BuildContext context) => option.screen});
    }
    return AppRoutes;
  }

    static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertSreen() //Si al intentar acceder a las rutas desde el homescreen hay una ruta que no existe lo metera al alert en vez de que salte error
          );
      }
}