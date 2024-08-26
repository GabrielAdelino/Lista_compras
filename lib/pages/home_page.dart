import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({ super.key });

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Stack(
              children: [
                //Imagem background
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img_background.jpeg'), //Link Imagem
                      fit: BoxFit.cover, //Cobrir toda a tela
                      ),
                  ),
                ),

                //Botão de acesso
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      //Ação do botão
                    },
                    child: Text('Acesse suas Listas'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
           ),
       );
  }
}