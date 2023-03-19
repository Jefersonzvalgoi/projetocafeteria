import 'package:flutter/material.dart';
import 'package:projetocafeteria/services/autentication_service.dart';
import 'package:projetocafeteria/textField_app.dart';
import 'package:provider/provider.dart';

import 'background_app.dart';
import 'cadastro.dart';
import 'text_app.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {

  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();

  logar() async {
    try {
      await context.read<AutenticationService>().login(email.text, senha.text);
    } on AutenticationException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
    }

  }
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Background_app(
          child: Center(
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 400,
                    width: 400,
                    child: Image.asset('assets/img/case.png')),
                const Text_app( 
                  data:"Caso escolha um café, pare aqui!",
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                  color: const Color.fromARGB(127, 36, 1, 22),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                            controller: email,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Informe o email corretamente!';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.none,
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Senha',
                              border: OutlineInputBorder(),
                            ),
                            controller: senha,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Informe sua senha!';
                              }else if(value.length < 6){
                                return 'Sua senha deve conter no mínimo 6 caracteres!';
                              }
                              return null;
                            },
                            obscureText: true,
                            keyboardType: TextInputType.none,
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                              width: double.infinity,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.00)),
                                    primary: Colors.white,
                                    backgroundColor:
                                        const Color.fromARGB(217, 244, 90, 36),
                                    elevation: 50.00,
                                    shadowColor: Colors.black,
                                  ),
                                  onPressed: () {
                                    logar();
                                  },
                                  child: const Text(
                                    "Entrar",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: const Text_app(
                    data: "Ainda não é cadastrado? Cadastre-se aqui!",                    
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Cadastro()));
                  },
                )
              ],
            ),
          ),
        ),
      );
}