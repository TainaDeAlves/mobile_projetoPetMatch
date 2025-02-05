import 'package:flutter/material.dart';



class DetalhesPet extends StatelessWidget {
  final Map<String, dynamic> pet;

  const DetalhesPet({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text(
        "${pet['cidade_doador']}/${pet['sexo']}/${pet['porte']}" ,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Verifique se o caminho da imagem está correto
              Image.network(
                pet['fotos'][0]['imagem'],
                height: 250,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 35,
                decoration: const BoxDecoration(
                  color: Color(0x3CCC9CFA),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/pata.png'), // Verifique se a imagem está no caminho correto
                        const SizedBox(width: 5),
                        const Text(
                          "Brincalhão",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/pata.png'), // Verifique o caminho novamente
                        const SizedBox(width: 5),
                        const Text(
                          "Alegre",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/pata.png'),
                        const SizedBox(width: 5),
                        const Text(
                          "Carinhoso",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
               Text(
                "Nome: ${pet['nome']}",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                "Raça: ${pet['raca']}",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                "Localização: ${pet['cidade_doador']}; ${pet['estado_doador']}",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Sobre mim:",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(202, 204, 156, 250),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
               Text(
                pet['descricao'],
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             
            ],
          ),
        ));
  }
}
