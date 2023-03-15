import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projetocafeteria/background_app.dart';
import 'package:projetocafeteria/cadastro.dart';
import 'package:projetocafeteria/textField_app.dart';

import 'homePage.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({super.key});

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {

  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) => Scaffold(
    
    body: Background_app(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            width: 400,
            child: Image.asset('assets/img/case.png')
          ),
          const Text("Caso escolha um café, pare aqui!"),
          const SizedBox(height: 20,),
          Card(
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextField_app(
                        onChanged: (txt){ 
                          email = txt;
                        },
                        obscureText: false,
                        labelText: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 10),
                      TextField_app(
                        onChanged: (txt) {
                         senha = txt;
                        }, 
                        obscureText: true, 
                        labelText: "Senha",
                        keyboardType: TextInputType.none,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.00)
                            ),
                            
                            primary: Colors.white,
                            backgroundColor:const Color.fromARGB(217,244,90,36),
                            elevation: 50.00,
                            shadowColor: Colors.black,
                            
                          ),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                          }, 
                          child: const Text("Entrar",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        )
                
                      ),
                    ],
                  ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            child: const Text("Ainda não é cadastrado? Cadastre-se aqui!"),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cadastro()));
            },
          )
        ],
      ),
    ),
  );
}