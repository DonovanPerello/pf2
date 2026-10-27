import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {

  runApp(const MiApp());
  

}


class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicación',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // 2. CONFIGURA TU PÁGINA COMO PRINCIPAL AQUÍ
      home: const HomePage(), 
    );
  }
}