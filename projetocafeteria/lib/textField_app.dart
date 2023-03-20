import 'package:flutter/material.dart';

class TextField_app extends StatelessWidget {
  const TextField_app(
      {super.key,
      required this.obscureText,
      required this.labelText,
      required this.keyboardType,
      required this.controller});

  final bool obscureText;
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          hintStyle: const TextStyle(color: Colors.black),
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
      ),
    );
  }
}
