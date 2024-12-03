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
                padding: const EdgeInsets.only(bottom: 5, top: 50, left: 25),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.asset(
                    'assets/logo3.png',
                    width: 205,
                  ),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 35),
                child: Text(
                  "Olá, seja bem-vinda",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 20),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Pagina inicial",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Categoria",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffcd9cfa)),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Adote",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Contribua",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        " Sobre nos",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Contatos",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffcd9cfa)),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "(14) 9999-9999",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "contato@petmatch.com",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Endereço; 00",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Faq",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffcd9cfa)),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Politica de privacidade",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Redes Sociais",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffcd9cfa)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:25),
                      child: Row(
                        children: [
                          Icon(Icons.label_important_outline),
                          Icon(Icons.label_important_outline),
                          Icon(Icons.label_important_outline),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      
      

      
    );
  }
}
