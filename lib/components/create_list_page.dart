import 'package:flutter/material.dart';

class CreateListPage extends StatefulWidget {
  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  final TextEditingController _listNameController = TextEditingController();
  String _selectedCategory = 'Mercado';

  @override
  void dispose() {
    _listNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Nova Lista'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Input para Nomear a Lista
            TextField(
              controller: _listNameController,
              decoration: InputDecoration(
                labelText: 'Nomeie sua Lista',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            // Lista suspensa para selecionar a categoria
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              decoration: InputDecoration(
                labelText: 'Selecione a Categoria',
                border: OutlineInputBorder(),
              ),
              items: ['Mercado', 'Farmácia', 'Variados']
                  .map((category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCategory = value ?? 'Mercado';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: CreateListPage(),
    ));
