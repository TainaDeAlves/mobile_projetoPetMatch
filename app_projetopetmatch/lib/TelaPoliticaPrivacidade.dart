import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Política de Privacidade',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaPoliticaPrivacidade(),
    );
  }
}

class TelaPoliticaPrivacidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Política de Privacidade'),
      ),
      backgroundColor: Colors.white,
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Título
              Text(
                'Política de Privacidade',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 20),

              // Texto explicativo (Política de Privacidade)
              Text(
                'Sua privacidade é importante para nós. Esta política de privacidade explica como coletamos, usamos, protegemos e divulgamos as informações pessoais dos nossos usuários. Ao utilizar nosso aplicativo, você concorda com os termos desta política.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),

              // Seção 1 - Coleta de Informações
              Text(
                '1. Coleta de Informações',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Nós coletamos informações pessoais fornecidas pelos usuários ao se registrarem, fazerem login ou interagirem com os recursos do aplicativo. Isso pode incluir nome, e-mail, número de telefone, etc.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),

              // Seção 2 - Uso das Informações
              Text(
                '2. Uso das Informações',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'As informações coletadas são usadas para fornecer nossos serviços, melhorar a experiência do usuário, personalizar conteúdo, e para fins de comunicação, como enviar notificações.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),

              // Seção 3 - Proteção das Informações
              Text(
                '3. Proteção das Informações',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Nós implementamos medidas de segurança adequadas para proteger as informações pessoais dos usuários. No entanto, não podemos garantir 100% de segurança contra acessos não autorizados.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),

              // Seção 4 - Compartilhamento de Informações
              Text(
                '4. Compartilhamento de Informações',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Não vendemos nem alugamos suas informações pessoais a terceiros. Podemos compartilhar suas informações apenas em conformidade com as leis, ou com parceiros e prestadores de serviços que nos ajudam a operar o aplicativo.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),

              // Seção 5 - Alterações na Política
              Text(
                '5. Alterações na Política',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Podemos atualizar nossa política de privacidade periodicamente. Quando isso ocorrer, publicaremos a versão atualizada no aplicativo e informaremos os usuários sobre as alterações.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),

              // Seção 6 - Contato
              Text(
                '6. Contato',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Se você tiver alguma dúvida sobre nossa política de privacidade ou sobre como tratamos suas informações, entre em contato conosco através do e-mail suporte@nossoapp.com.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
