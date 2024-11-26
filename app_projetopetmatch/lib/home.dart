
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pet macht"),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(50, 209, 168, 247),
                Color.fromARGB(31, 209, 168, 247),
                Color.fromARGB(17, 209, 168, 247),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
           
          ),
        ));
  }
}
  