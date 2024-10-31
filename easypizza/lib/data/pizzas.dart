import 'package:uuid/uuid.dart';

import '../models/pizza.dart';

var uuid = Uuid();

final List<Pizza> pizzasData = [
  Pizza(name: 'Margherita', price: 7.99, id: uuid.v4()),
  Pizza(name: 'Quattro Fromaggi', price: 8.99, id: uuid.v4()),
  Pizza(name: 'Regina', price: 9.49, id: uuid.v4()),
  Pizza(name: 'Diavola', price: 8.49, id: uuid.v4()),
  Pizza(name: 'Capricciosa', price: 9.99, id: uuid.v4()),
  Pizza(name: 'Marinara', price: 6.99, id: uuid.v4()),
  Pizza(name: 'Ortolana', price: 8.49, id: uuid.v4()),
  Pizza(name: 'Bianca', price: 7.49, id: uuid.v4()),
  Pizza(name: 'Parma', price: 10.99, id: uuid.v4()),
];
