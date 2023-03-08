import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) => Container(
    color: const Color.fromARGB(255, 34, 0, 16),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Email", border: OutlineInputBorder() 
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Senha", border: OutlineInputBorder() 
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text("Login")
        )
      ],
    ),
  );
  
}