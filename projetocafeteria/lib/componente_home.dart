import 'package:flutter/material.dart';

class Componente_home extends StatefulWidget {
  const Componente_home({super.key});

  @override
  State<Componente_home> createState() => _Componente_homeState();
}

class _Componente_homeState extends State<Componente_home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      //color: const Color.fromARGB(217,244,90,36),
      decoration: BoxDecoration(
        color: const Color.fromARGB(217,244,90,36),
        borderRadius: BorderRadius.circular(20.00)),
    );
  }
}