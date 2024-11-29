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
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text("Pet match")],
        ),
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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [Image.asset(
                  'assets/logo3.png',
                  width: 205,
                  height: 100,
                ),
                ]
              ),
              ),
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Text(
                  "Olá, seja bem-vinda",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),

                
              )
            ],
          ),
        ),
      ),
    );
  }
}
