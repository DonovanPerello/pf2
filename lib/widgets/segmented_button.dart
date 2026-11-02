import 'package:flutter/material.dart';
class Segmentedbutton extends StatefulWidget {
  const Segmentedbutton({super.key});

  @override
  State<Segmentedbutton> createState() => _SegmentedbuttonState();
}

class _SegmentedbuttonState extends State<Segmentedbutton> {
 
  Set<String> opcionSeleccionada = {'A'};

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SegmentedButton(
        segments: const <ButtonSegment<String>>[
          ButtonSegment<String>(
            value: 'A',
            label: Text('Option A'),
          ),
          ButtonSegment<String>(
            value: 'B',
            label: Text('Option B'),
          ),
          ButtonSegment<String>(
            value: 'C',
            label: Text('Option C'),
          ),
        ],
        selected: opcionSeleccionada, 
        
        onSelectionChanged: (Set<String> nuevaSeleccion) {
          setState(() {
            opcionSeleccionada = nuevaSeleccion;
          });
        },
      ),
    );
  }
}
