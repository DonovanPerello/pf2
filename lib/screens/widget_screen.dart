import 'package:flutter/material.dart';

import '../widgets/Dismissible.dart';


class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Screen ejemplos"),
      ),
      body: ListView(
        children: [
          const Text("Ejemplo de Dismissible: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const DismissibleExample()

        ],
      ),
    );
  }
}