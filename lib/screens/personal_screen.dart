import 'package:flutter/material.dart';
import '../models/persona.dart';

class PersonalScreen extends StatefulWidget {
  final Persona persona;
 const PersonalScreen({super.key, required this.persona});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {


 late TextEditingController nameController;
 
  @override
  





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Camps - Edit Profile"),),
    );
  }
}