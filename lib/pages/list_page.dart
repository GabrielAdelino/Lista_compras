import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: Center(
      ),
      floatingActionButton: FloatingActionButton.extended(  // Verifique este nome
        onPressed: () {
          // Ação a ser executada ao pressionar o botão
          print('FAB Pressionado');
        },
        backgroundColor: Colors.blue,
        icon: Icon(Icons.add),
        label: Text('Criar Lista'),
          // Ícone de adição padrão    
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      );
  }
}
