import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/widget_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String widgets = '/widgets';

  // Creamos un mapa que conecta el nombre con la pantalla
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
      widgets: (context) => const WidgetScreen(),
    };
  }
}