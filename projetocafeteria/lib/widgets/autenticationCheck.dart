import 'package:flutter/material.dart';
import 'package:projetocafeteria/homePage.dart';
import 'package:projetocafeteria/pageLogin.dart';
import 'package:projetocafeteria/services/autentication_service.dart';
import 'package:provider/provider.dart';

class AutenticationCheck extends StatefulWidget {
  const AutenticationCheck({super.key});

  @override
  State<AutenticationCheck> createState() => _AutenticationCheckState();
}

class _AutenticationCheckState extends State<AutenticationCheck> {
  @override
  Widget build(BuildContext context) {
    AutenticationService auth = Provider.of<AutenticationService>(context);
    
    if(auth.loading){
      return loading();
    }else if(auth.usuario == null){
      return const PageLogin();
    }else{
      return const HomePage();
    }
    
    
  }
 loading(){
  return const Scaffold(
    body: Center(
      child: CircularProgressIndicator(),
    ),
  );
 } 
 
}

