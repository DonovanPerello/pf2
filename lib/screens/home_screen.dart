import 'package:flutter/material.dart';
import '../models/persona.dart';

// Usamos StatefulWidget por la reactividad requerida: el estado de la pantalla 
//(la información del perfil) debe redibujarse y 
//actualizarse cuando el usuario regrese de la pantalla de edición con los datos modificados.

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Persona user = Persona(
    name: "Samuel",
    surname: "Peace Oluwamuyiwa",
    email: "samuelpeaceoluwamuyiwa@paucasesnovescifp.cat",
    birthDate: DateTime(2000, 1, 1),
    password: "12345678"
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DevProfile M3"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Text("Tarjeta del usuario "),
                   SizedBox(height: 20),
                   Text('First name: ${user.getNameandSurname()} '),
                   
                   SizedBox(height: 15),
                   Text('Email: ${user.email}'),
                   SizedBox(height: 15),
                   Text('Birth Date: ${user.birthDate.toLocal()}'),
                ],
                
                
              ),
              ),
               
            ),
            const SizedBox(height: 30),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [             
               ElevatedButton(
                child: Text("Edit Profile"),
              onPressed: null,             
            ),
            SizedBox(width: 15),
            ElevatedButton(
              child: Text("Explore Widget Showcase"),
              onPressed: null,
              
            )
            ],),
          ],
        ),
        ),
        
        
    );
  }
}