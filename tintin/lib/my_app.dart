import 'package:flutter/material.dart';
import 'package:tintin/screens/album_master.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.title}) : super(key: key);

  final String title;

  final albumMaster = AlbumMaster;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Albums de Tintin',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 24, 186, 231),
          ),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: const Center(
            child: AlbumMaster(),
          ),
        ));
  }
}
