import 'package:easypizza/data/pizzas.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PizzasMaster extends StatelessWidget {
  const PizzasMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nos Pizzas"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: pizzasData.length,
        itemBuilder: (context, index) {
          final pizza = pizzasData[index];
          return ListTile(
            title: Text(pizza.name),
            subtitle: Text('${pizza.price.toStringAsFixed(2)} €'),
            leading: const Icon(Icons.local_pizza, color: Colors.deepOrange),
            onTap: () {
              if (kDebugMode) {
                print(pizza.name);
              }
            },
          );
        },
      ),
    );
  }
}
