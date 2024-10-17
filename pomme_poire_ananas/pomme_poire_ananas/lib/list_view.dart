import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/symbol.dart';

class FruitsList extends StatefulWidget {
  const FruitsList({super.key, required this.title});

  final String title;
  @override
  State<FruitsList> createState() => _FruitsListState();
}

class _FruitsListState extends State<FruitsList> {
  int _counter = 0;
  final List<int> _fruitsList = [];

  void _addFruit() {
    setState(() {
      _counter += 1;
      _fruitsList.add(_counter);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pomme Poire et Ananas"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: _fruitsList.length,
                itemBuilder: (BuildContext context, int index) {
                final int fruit = _fruitsList[index];
                return typeNumber(fruit);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addFruit,
        tooltip: 'Add a fruit',
        child: const Icon(Icons.add),
      ),
    );
  }
}
