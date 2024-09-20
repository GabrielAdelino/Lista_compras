import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onEdit;

  const CardList({
    Key ? key,
    required this.title,
    required this.icon,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(10),
        child: Row(
        children: [ 
              Container(
        height: 50,
        width: 50, // Define a largura do container do ícone
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          Icons.list_alt,
          color: Colors.white,
        ),
      ),
          SizedBox(width: 10),

         Container( //Linha que divide Icon e Text
              height: 40,
              width: 2, 
              color: Colors.grey,
            ),

            SizedBox(width: 10),

         Expanded(
              //padding: EdgeInsets.fromLTRB(6, 10, 10, 10),
              child: Text(
                title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Roboto',
            ),
            overflow: TextOverflow.ellipsis,
            ),
         ),
         SizedBox(width: 40),
      Container(
  decoration: BoxDecoration(
    color: Colors.grey.shade100, // Cor de fundo
    borderRadius: BorderRadius.circular(8), // Arredondamento da borda
  ),
  child: IconButton(
    icon: Icon(Icons.edit_sharp, 
    color: Colors.black), // Ícone com cor branca
    onPressed: () {
      // Ação do botão
    },
  ),
), //Colocar o Icone aqui
        ],
      ),
        ),
      );
 }
}