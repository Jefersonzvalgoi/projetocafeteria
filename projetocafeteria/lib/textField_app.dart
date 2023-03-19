import 'package:flutter/material.dart';

class TextField_app extends StatefulWidget {
  const TextField_app(
      {super.key,
      required this.obscureText,
      required this.labelText,
      required this.keyboardType,
      required this.controler,
      required this.validator, this.onChanged,
      });

  final Function(String)? onChanged;
  final bool obscureText;
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controler;
  final Function(String) validator;

  @override
  State<TextField_app> createState() => _TextField_appState();
}

class _TextField_appState extends State<TextField_app> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        validator: (value) {
          widget.validator;
          return null;
        },
        controller: TextEditingController(),
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          hintStyle: const TextStyle(color: Colors.white),
        ),
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        
      ),
    );
  }
}
