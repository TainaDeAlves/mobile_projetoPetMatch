import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sobre Nós',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaSobreNos(),
    );
  }
}

class TelaSobreNos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre Nós'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Logo
            Center(
              child: Image.asset(
                'assets/logo3.png', // Caminho da imagem
                height: 120, // Tamanho do logo
                width: 120,
              ),
            ),
            const SizedBox(height: 20), // Espaço entre o logo e o título

            // Título da tela
            const Text(
              'Sobre a Nossa Organização',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20), // Espaçamento entre o título e o texto

            // Texto explicativo
            const Text(
              'Somos uma organização dedicada ao bem-estar dos animais. Nosso objetivo é promover a adoção responsável e fornecer suporte a pets que buscam um novo lar. Além disso, buscamos educar a sociedade sobre cuidados com os animais e a importância do respeito a todas as formas de vida.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Texto sobre a missão
            const Text(
              'Nossa Missão',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Proporcionar um futuro melhor para os animais, ajudando-os a encontrar um lar seguro e amoroso. Através da educação e adoção responsável, trabalhamos para fazer a diferença na vida dos pets e das pessoas.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
