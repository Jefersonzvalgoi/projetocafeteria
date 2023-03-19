import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AutenticationException implements Exception{
  String message;
  AutenticationException(
    this.message
  );
}

class AutenticationService extends ChangeNotifier {


  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool loading = true;

  AutenticationService(){
    _autenticationCheck();
  }
  
  _autenticationCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      loading = false;
      notifyListeners();
     });
  }

  _getUser(){
    usuario = _auth.currentUser;
    notifyListeners();
  }

  registrar(String email, String senha) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: senha);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AutenticationException("A senha é muito fraca!");
      }else if(e.code == 'email-already-in-use'){
        throw AutenticationException('Este Email ja está em uso!');
      }
    }
  }
   
  login(String email, String senha) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not=found') {
        throw AutenticationException("Email não encontrado. Cadastre-se!");
      }else if(e.code == 'wrong-password'){
        throw AutenticationException('Senha incorreta. Tente novamente!');
      }
    }
  }

  logout() async {
    _auth.signOut();
    _getUser();
  }
}