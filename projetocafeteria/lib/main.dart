import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projetocafeteria/services/autentication_service.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import 'myApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AutenticationService()),
    ],
    child: const MyApp(),
  ));
}
