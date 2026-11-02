import 'package:flutter/material.dart';

class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  // Lista de prueba con solo 3 números
  List<int> items = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return Dismissible(
          key: ValueKey<int>(item), 
          background: Container(color: Colors.red), 
          onDismissed: (direction) {
            setState(() {
              items.remove(item);
            });
          },
          child: ListTile(title: Text('Desliza para borrar el nro: $item')),
        );
      }).toList(),
    );
  }
}