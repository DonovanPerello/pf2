import 'package:flutter/material.dart';
class Persona{

String  name; String surname;
String email;
String password;
DateTime birthDate;

Persona({
    this.name = "Doni",
    this.surname = "Perello",
    this.email = "doniperello@example.com",
    this.password = "123456",
    DateTime? birthDate, 
  }) : this.birthDate = birthDate ?? DateTime(2004, 7, 19);

  
String getNameandSurname() {
  return '$name $surname';
}

}