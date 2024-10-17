import 'package:flutter/material.dart';

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

  // Fonction pour vérifier si un nombre est premier
bool isPrime(int number) {
  if (number < 2) {
    return false;  // 0 et 1 ne sont pas premiers
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;  // Si divisible par un autre nombre que 1 et lui-même
    }
  }
  return true;
}

Widget typeNumber(int counter) {
  if (counter > 0) {
    if (isPrime(counter)) {
      return ListTile(
        selected: true,
        selectedTileColor: const Color.fromARGB(255, 223, 18, 168),
        leading: Image.asset('images/ananas.png'),
        title: Text('Nombre $counter est premier'),
      );
    } else if (counter % 2 == 0) {
      return ListTile(
        selected: true,
        selectedTileColor: Colors.lightBlue,
        leading: Image.asset('images/poire.png'),
        title: Text('Nombre $counter est pair'),
      );
    } else {
      return ListTile(
        selected: true,
        selectedTileColor: const Color.fromARGB(255, 53, 209, 42),
        leading: Image.asset('images/pomme.png'),
        title: Text('Nombre $counter est impair'),
      );
    }
  }
  return const SizedBox(); // Si le nombre est inférieur ou égal à 0
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
