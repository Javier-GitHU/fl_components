import 'package:flutter/material.dart';

import '../srceens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
        'listview1' : (BuildContext context) => const Listview1Screen(),
        'listview2' : (BuildContext context) => const Listview2Screen(),
        'alert' : (BuildContext context) => const AlertSreen(),
        'card' : (BuildContext context) => const CardScreen(),
        'home' : (BuildContext context) => const HomeScreen(),
      };

    static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertSreen() //Si al intentar acceder a las rutas desde el homescreen hay una ruta que no existe lo metera al alert en vez de que salte error
          );
      }
}