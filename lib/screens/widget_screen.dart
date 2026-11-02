import 'package:flutter/material.dart';
import '../widgets/interactive_viewer.dart';
import '../widgets/dismissible.dart';
import '../widgets/segmented_button.dart';
//Usamos StatefulWidget porque los componentes interactivos internos (SegmentedButton, Dismissible, InteractiveViewer)
// necesitan gestionar variables de estado (selecciones y listas de elementos) 
//que obligan a redibujar la interfaz al interactuar con ellos.

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
          const DismissibleExample(),
          const SizedBox(height: 20),
          const Text("Ejemplo de SegmentedButton: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Segmentedbutton(),
          const SizedBox(height: 20),
          const Text("InteractiveViewer: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const InteractiveViewerEjemplo(),
        ],
      ),
    );
  }
}