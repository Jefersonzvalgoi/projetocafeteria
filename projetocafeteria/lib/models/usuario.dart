import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Usuario {
  final int? id;
  final String nome;
  final String email;
  final String senha;

  Usuario({
    this.id,
    required this.nome,
    required this.email,
    required this.senha,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> mapa) {
    return Usuario(
      id: mapa['id'],
      nome: mapa['nome'],
      email: mapa['email'],
      senha: mapa['senha'],
    );
  }
}
