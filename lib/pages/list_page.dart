import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 20, top: 15, right: 50, bottom: 15),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          ),
        ),
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
                                  //controller: _namelist,
                                  decoration: InputDecoration(
                                    labelText: 'Nomeie sua lista',
                                         border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                         ),
                                  ),
                                ),

                                SizedBox(height: 15),

                                  DropdownButtonFormField<String>(
                                    //value: _selectedOption,
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

                                    TextFormField(
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
                                       onPressed: () {
                                        //Ação de redirecionar
                                       },
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
