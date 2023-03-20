import 'package:flutter/material.dart';
import 'package:projetocafeteria/background_app.dart';
import 'package:projetocafeteria/pageLogin.dart';
import 'package:projetocafeteria/services/autentication_service.dart';
import 'package:projetocafeteria/textField_app.dart';
import 'package:projetocafeteria/text_app.dart';
import 'package:provider/provider.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController nome = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController senha = TextEditingController();

  registrar() async {
    try {
      await context
          .read<AutenticationService>()
          .registrar(email.text, senha.text);
    } on AutenticationException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.message),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background_app(
        child: Center(
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset("assets/img/case.png"),
              ),
              const Text_app(
                data: "Cadastro Switch Case Coffe Break!",
              ),
              const SizedBox(
                height: 40,
              ),
              Card(
                child: Container(
                  color: Color.fromARGB(127, 36, 1, 22),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nome,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            labelText: "Nome",
                          ),
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: senha,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Informe um corretamente!';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            labelText: "Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Informe uma senha!';
                            } else if (value.length < 6) {
                              return 'Sua senha deve conter no mínimo 6 caracteres!';
                            }
                            return null;
                          },
                          controller: senha,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            labelText: "Senha",
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
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
                                  registrar();
                                },
                                child: const Text(
                                  "Cadastrar",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
