import 'package:flutter/material.dart';

class ItensList extends StatelessWidget {
  const ItensList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título da Página'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Voltar para a página anterior
          },
        ),
      ),
      body: const Center(
        child: Text(
          'Conteúdo da Página',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Coloca o botão no canto inferior direito
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ItensList(),
  ));
}
