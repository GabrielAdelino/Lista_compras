import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_background.jpeg'), // Caminho da imagem de fundo
                fit: BoxFit.cover, // Cobrir toda a tela
              ),
            ),
          ),
          // Conteúdo principal (logo + botão de acesso)
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Mantém a coluna centrada com altura mínima
              children: [
                // Logo com bordas arredondadas
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset(
                    'assets/Logo_mercado.jpeg', // Caminho da logo
                    height: 250,
                    width: 250,
                  ),
                ),
                const SizedBox(height: 80), // Espaçamento entre logo e botão
                // Botão de acesso com seta e sombra
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70, // Cor de fundo do botão
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 20),
                    elevation: 5, // Altura da sombra
                    shadowColor: Colors.black.withOpacity(0.5), // Cor da sombra
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Bordas arredondadas
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Acesse suas Listas'),
                      const SizedBox(width: 10),
                      Icon(Icons.arrow_forward_outlined, size: 20), // Seta
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
