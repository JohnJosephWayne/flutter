import 'package:flutter/material.dart';

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