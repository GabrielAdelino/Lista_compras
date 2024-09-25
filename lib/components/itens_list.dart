import 'package:flutter/material.dart';
import 'package:lista_compras/components/user_input_card.dart';
// Certifique-se de importar corretamente

class ItensList extends StatefulWidget {
  const ItensList({Key? key}) : super(key: key);

  @override
  _ItensListState createState() => _ItensListState();
}

class _ItensListState extends State<ItensList> {
  List<String> _items = []; // Lista de dados (Strings) em vez de Widgets

  // Função para adicionar um novo item à lista
  void _addItem() {
    setState(() {
      _items.add('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Voltar para a página anterior
          },
        ),
        title: const Text('Lista de Itens'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return UserInputCard(
            key: UniqueKey(), // Chave única para evitar conflitos de renderização
            title: _items[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addItem, // Chama a função para adicionar um novo item
        backgroundColor: Colors.blue,
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: const Text(
          'Add item',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Coloca o botão no canto inferior direito
    );
  }
}
