import 'package:flutter/material.dart';
import 'package:pf2/screens/personal_screen.dart';

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
      home: const HomePage(), 
    );
  }
}