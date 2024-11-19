import 'package:flutter/material.dart';

class AdotarPet extends StatefulWidget {
  const AdotarPet({super.key});

  @override
  State<AdotarPet> createState() => _AdotarPetState();
}

class _AdotarPetState extends State<AdotarPet> {
 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text("PetMatch"),
    actions: [
      IconButton(
        onPressed:(){}, 
        icon: const Icon(Icons.accessible_sharp)
       ),
    ],
        
      ),
    );
  }
}
