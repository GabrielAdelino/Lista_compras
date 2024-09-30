import 'package:flutter/material.dart';
import 'package:lista_compras/components/user_input_card.dart';

class ItensList extends StatefulWidget {
  final String listName; // Recebe o nome da lista

  const ItensList({Key? key, required this.listName}) : super(key: key);

  @override
  _ItensListState createState() => _ItensListState();
}

class _ItensListState extends State<ItensList> {
  List<String> _items = []; // Lista de dados (Strings) em vez de Widgets

  // Função para adicionar um novo item à lista
  void _addItem() {
    setState(() {
      _items.add(''); // Adiciona um item vazio
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
        title: Text(widget.listName), // Exibe o nome da lista no AppBar
      ),
     body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff02AABD), // Começo do degradê
              Color(0xff00CDAC),  // Final do degradê
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return UserInputCard(
              key: UniqueKey(), //chave unica, para evitar conflitos de renderização
              title: _items[index],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addItem, // Chama a função para adicionar um novo item
        backgroundColor: Color(0xfff17300),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      resizeToAvoidBottomInset: false, // Coloca o botão no canto inferior direito
    );
  }
}
