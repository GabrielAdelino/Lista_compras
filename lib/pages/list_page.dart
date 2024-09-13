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
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,    
                                  ),
                                ),
                                ],
                              ),
                                SizedBox(height: 20),
                                TextFormField(
                                  //controller: _namelist,
                                  decoration: const InputDecoration(
                                    labelText: 'Nomeie sua lista',
                                         border: OutlineInputBorder(),
                                  ),
                                ),

                                SizedBox(height: 13),

                                  DropdownButtonFormField<String>(
                                    //value: _selectedOption,
                                     decoration: InputDecoration(
                                      labelText: 'Selecione uma opção',
                                      border: OutlineInputBorder(),
                                     ),
                                     items: [
                                       DropdownMenuItem(
                                          value: 'Mercado',
                                          child: Text('Mercado'),
                                       ),
                                        DropdownMenuItem(
                                          value: 'Farmaácia',
                                          child: Text('Farmácia'),
                                       ),
                                        DropdownMenuItem(
                                          value: 'Variados',
                                          child: Text('Variados'),
                                       ),
                                     ],
                                     onChanged: (value) {
                                        //setState(() 
                                           // _selectedOption = value!;
                                        //)};
                                     },
                                    ),
                                     SizedBox(height: 20),
                                //Adicionar os novos inputs apartir daqui 
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 3,
                        left: 0,
                        child: IconButton(
                          icon: Icon(Icons.close), // panorama_fish_eye_rounded
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
        icon: Icon(Icons.add),
        label: Text('Criar Lista'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
