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
     appBar: PreferredSize(
  preferredSize: const Size.fromHeight(188.0), // Define a altura do AppBar
  child: AppBar(
    backgroundColor: Color.fromARGB(255, 230, 230, 230),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context); // Voltar para a página anterior
      },
    ),
    title: Text(widget.listName), // Exibe o nome da lista no AppBar
    flexibleSpace: Padding(
      padding: const EdgeInsets.only(top: 60.0), // Ajusta o espaçamento
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinha os itens à esquerda
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 15, right: 16),
            child: TextFormField(
             decoration:  InputDecoration(
                labelText: 'Descrição',
                fillColor: Color(0xfff1faee).withOpacity(0.9),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                //borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12), // Espaçamento entre o campo de descrição e o Dropdown
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButtonFormField<String>(
             decoration:  InputDecoration(
                labelText: 'Selecione uma opção',
                fillColor: Color(0xfff1faee).withOpacity(0.9),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                //borderSide: BorderSide.none,
                ),
              ),
              items: <String>['Mercado', 'Farmácia', 'Variados']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Ação ao selecionar um item
              },
            ),
          ),
        ],
      ),
    ),
  ),
),

     body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 151, 168), // Começo do degradê
              Color.fromARGB(255, 149, 216, 205),  // Final do degradê
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
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
        backgroundColor: Color(0xfff1faee),
        icon: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        label: const Text(
          'Add item',
          style: TextStyle(
            color: Colors.black,
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
