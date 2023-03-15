import 'package:flutter/material.dart';

class Background_app extends StatelessWidget {
  const Background_app({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: const EdgeInsets.all(20.0),
      color: const Color.fromARGB(255,36, 1, 22),
    );
  }
}