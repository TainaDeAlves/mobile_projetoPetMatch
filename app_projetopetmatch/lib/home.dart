import 'package:app_projetopetmatch/detalhesPet.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> pets = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    listaServicos();
  }

  Future<void> listaServicos() async {
    try {
      final response =
          await http.get(Uri.parse('http://10.56.45.24/public/api/pets'));

      if (response.statusCode == 200) {
        setState(() {
          pets = json.decode(response.body);
          isLoading = false;
        });
      }
    } catch (e) {
      mostrarError('Erro: $e');
    }
  }

  void mostrarError(String mensagem) {
    setState(() {
      isLoading = false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(mensagem),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const SizedBox(
          width: 150, // Define a largura da imagem
          height: 50, // Define a altura da imagem
          child: Image(
            image: AssetImage("assets/logo3.png"),
          ),
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
                      padding: EdgeInsets.only(left: 25),
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
      body: Column(
        children: [
          Stack(
            children: [
              // Imagem como fundo
              Positioned.fill(
                child: Image.asset(
                  'assets/banner_barra.png', // Caminho da imagem
                  fit: BoxFit.contain, // A imagem vai cobrir toda a área
                ),
              ),
              // Container em cima da imagem
              Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          const Text(
            "Encontre seu novo amigo!",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xffcd9cfa)),
          ),
          const SizedBox(
            height: 25,
          ),
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : Expanded(  // Coloquei o ListView dentro do Expanded
                  child: ListView.builder(
                    itemCount: pets.length,
                    itemBuilder: (context, index) {
                      final pet = pets[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  DetalhesPet(pet: pet,)));
                        },
                        child: Card(
                          elevation: 0.5,
                          margin: const EdgeInsets.all(8.0),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16.0), // Borda arredondada do card
                            side: const BorderSide(
                              color: Color(0xffcd9cfa), // Cor da borda do card
                              width: 2.0, // Largura da borda do card
                            ),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    16), // Borda arredondada na imagem
                                child: Image.network(
                                  pet['fotos'][0]['imagem'],
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                               Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        pet['nome'],
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        pet['raca'],
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        pet['sexo'],
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
