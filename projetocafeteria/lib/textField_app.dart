import 'package:flutter/material.dart';

class TextField_app extends StatelessWidget {
  const TextField_app({super.key, required this.onChanged, required this.obscureText, required this.labelText, required this.keyboardType});

  final Function(String)? onChanged;
  final bool obscureText;
  final String labelText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: TextField(
        onChanged: onChanged,
        style:  const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: labelText, 
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
          hintStyle: const TextStyle(color: Colors.black),
        ),
        obscureText: obscureText, 
        keyboardType: keyboardType,                     
      ),
    );
  }
}