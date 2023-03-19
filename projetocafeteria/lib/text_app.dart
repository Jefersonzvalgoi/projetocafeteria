import 'package:flutter/material.dart';

class Text_app extends StatelessWidget {
  const Text_app({super.key, required this.data});

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      );
  }
}