import 'package:flutter/material.dart';
import 'package:lista_compras/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 14, 160, 46)),
        useMaterial3: true,
      ),
      home: const HomePage() ,
    );
  }
}
