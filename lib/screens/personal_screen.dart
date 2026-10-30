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
 late TextEditingController surnameController;
 late TextEditingController emailController;
 late TextEditingController dateController;
 late TextEditingController passwordController;


 
  @override

  void initState(){
    super.initState();

    nameController = TextEditingController(text: widget.persona.name.toUpperCase());
    surnameController = TextEditingController(text: widget.persona.surname);
    emailController = TextEditingController(text: widget.persona.email);
    dateController = TextEditingController(text: widget.persona.birthDate.toString());
    passwordController = TextEditingController(text: widget.persona.password);
    
  

  }

  @override
  void dispose(){
    nameController.dispose();
    surnameController.dispose();
    emailController.dispose();
    dateController.dispose();
    passwordController.dispose();
    super.dispose();

  }
  Future<void> _selectDate() async{
                DateTime? newDate = await showDatePicker(
                  context: context, 
                  initialDate: widget.persona.birthDate,
                  firstDate: DateTime(1900), 
                  lastDate: DateTime.now()
                  );
                
                if(newDate != null){
                  setState(() {
                    TextEditingController date = TextEditingController(text:newDate.toString()); 
                    dateController = date;
                  });

                }


              }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perello - Edit Profile"),
        ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          TextField(
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.text,
            controller: nameController,
            decoration: const InputDecoration(labelText:" First Name:"  ),           
          ), 
          const SizedBox(height: 18,),
          TextField(
            controller: surnameController,
            decoration: const InputDecoration(labelText:" Last Name:"  ), 

          ),
          const SizedBox(height: 18,),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: const InputDecoration(labelText:" Email Address:"  ), 

          ),
          const SizedBox(height: 18,),
          TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(labelText:" Password:" ), 
            
          ),
          const SizedBox(height: 16),


          // 5. Date of Birth
          TextField(
            controller: dateController,
            decoration: const InputDecoration(labelText: 'Date of Birth'),
            readOnly: true,
            
            onTap: () {

              _selectDate();
            },
            
          ),
          
          const SizedBox(height: 32,),

          ElevatedButton(onPressed: (){
            
          }, child: const Text("Save and return"))


        ],
      ),
      ),
      
      
      

    );
  }
}