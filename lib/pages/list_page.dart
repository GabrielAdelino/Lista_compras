import 'package:flutter/material.dart';
import 'package:lista_compras/components/card_list.dart';
 // Certifique-se de importar o arquivo onde está o CardList

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<CardList> cardListItems = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String? selectedOption;

  void _addCard() {
    setState(() {
      // Adiciona um novo CardList com base nas informações fornecidas
      cardListItems.add(
        CardList(
          title: nameController.text, // Nome da lista
          icon: Icons.list_alt, // Ícone pode ser fixo ou ajustável
          onEdit: () {
            // Ação de edição
          },
        ),
      );
    });

    // Limpa os campos após adicionar
    nameController.clear();
    descriptionController.clear();
    selectedOption = null;
    Navigator.of(context).pop(); // Fecha o dialogo após adicionar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: ListView(
        children: [
          ...cardListItems, // Exibe os itens da lista de cards
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Center(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          height: 410,
                          width: 290,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Icon(
                                    Icons.panorama_fish_eye_rounded,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Crie a sua Lista',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 5,
                                width: 205,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller: nameController, // Controlador do campo
                                decoration: InputDecoration(
                                  labelText: 'Nomeie sua lista',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              DropdownButtonFormField<String>(
                                value: selectedOption,
                                decoration: InputDecoration(
                                  labelText: 'Selecione uma opção',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    value: 'Mercado',
                                    child: Text('Mercado'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Farmácia',
                                    child: Text('Farmácia'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Variados',
                                    child: Text('Variados'),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller: descriptionController, // Controlador para a descrição
                                maxLines: 3,
                                decoration: InputDecoration(
                                  labelText: 'Descrição',
                                  alignLabelWithHint: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 13),
                              SizedBox(
                                height: 45,
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                  onPressed: _addCard, // Função para adicionar o card
                                  icon: Icon(
                                    Icons.library_books_sharp,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Adicionar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 3,
                        left: 0,
                        child: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Colors.blue,
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: Row(
          children: [
            Text(
              'Criar Lista',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
