import 'package:flutter/material.dart';

class InteractiveViewerEjemplo extends StatefulWidget {
  const InteractiveViewerEjemplo({super.key});

  @override
  State<InteractiveViewerEjemplo> createState() => _InteractiveViewerEjemploState();
}

class _InteractiveViewerEjemploState extends State<InteractiveViewerEjemplo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(20.0),
        minScale: 0.1,
        maxScale: 2.0,
        child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      )
    );
  }
}