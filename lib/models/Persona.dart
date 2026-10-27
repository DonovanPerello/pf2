import 'package:flutter/material.dart';
class Persona{

 String  name; String surname;
String email;
String password;
DateTime birthDate;

Persona({required this.name, required this.surname, required this.email, required this.password, required this.birthDate});

String getNameandSurname() {
  return '$name $surname';
}

}