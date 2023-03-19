import 'package:flutter/material.dart';

import 'services/autentication_service.dart';
import 'package:projetocafeteria/widgets/autenticationCheck.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home:  const AutenticationCheck(),
      );
    }
    
}

