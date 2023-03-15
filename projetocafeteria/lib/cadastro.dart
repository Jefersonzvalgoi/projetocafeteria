import 'package:flutter/material.dart';
import 'package:projetocafeteria/background_app.dart';
import 'package:projetocafeteria/pageLogin.dart';
import 'package:projetocafeteria/textField_app.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  String nome = "";

  String email = "";

  String senha = "";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Background_app(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/img/case.png"),
            ),
            const Text("Cadastro Switch Case Coffe Break!"),
            const SizedBox(
              height: 40,
            ),
            Card(
              child: Container(
                color: Colors.grey,
                child: Padding(
                  
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextField_app(
                  onChanged: (txt){
                    nome = txt;
                  }, 
                  obscureText: false, 
                  labelText: "Nome", 
                  keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                  height: 20,
                            ),
                            TextField_app(
                  onChanged: (txt){
                    email = txt;
                  }, 
                  obscureText: false, 
                  labelText: "Email", 
                  keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                  height: 20,
                            ),
                            TextField_app(
                  onChanged: (txt){
                    senha = txt;
                  }, 
                  obscureText: false, 
                  labelText: "Senha", 
                  keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                  height: 40,
                            ),
                            
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PageLogin()));
                    }, 
                    child: const Text("Cadastrar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  )
                    
                            ),
                    ],
                  ),
                ),
              ),
            ),
            
            
    
    
          ],
        ),
        ),
    );
  }
}