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
        appBar: AppBar(
          title: const Text("Pet macht"),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        endDrawer: Drawer(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(50, 209, 168, 247),
                  Color.fromARGB(31, 209, 168, 247),
                  Color.fromARGB(17, 209, 168, 247),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
padding: E,
            ),
            )
            );
  }
}
