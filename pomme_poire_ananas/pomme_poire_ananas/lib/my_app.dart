
import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/list_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Pommes, poires et ananas',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 24, 186, 231),
      ),
      useMaterial3: true,
    ),
    home: const FruitsList(title: 'Pommes, poires et ananas'),
  );
}

}