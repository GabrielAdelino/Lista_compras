import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg_login.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              // AppBar com Box Shadow
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: AppBar(
                  title: const Text('Cadastro'),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  foregroundColor: Colors.white,
                  iconTheme: const IconThemeData(
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset(
                    'assets/Logo_mercado.jpeg', // Caminho da logo
                    height: 150,
                    width: 150,
                  ),
                ),
                
              const SizedBox(height: 20),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Campo Nome com opacidade no fundo
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff1faee).withOpacity(0.9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Nome',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      // Campo E-mail com opacidade no fundo
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff1faee).withOpacity(0.9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'E-mail',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      // Campo Senha com opacidade no fundo
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff1faee).withOpacity(0.9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      // Botão de Cadastro
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para o cadastro do usuário
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          textStyle: const TextStyle(fontSize: 18),
                          backgroundColor: Color(0xfff1faee), //Valor padrão 0xff
                        ),
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person, 
                              color: Color(0xff007c77)
                              ),
                              SizedBox(width: 3),
                              Text(
                                'Cadastrar',
                                style: TextStyle(
                                  color: Color(0xff007c77),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
