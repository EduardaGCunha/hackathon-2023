import 'package:new_project/models/category.dart';
import 'package:new_project/models/thingy.dart';

const dummyCategories = [
  Category(
    id: 'c1',
    title: 'Amanda Nunes',
    image: 'lib/images/pessoa1.png',
  ),
  Category(
    id: 'c2',
    title: 'Geovana Cunha',
    image: 'lib/images/pessoa2.png',
  ),
  Category(
    id: 'c2',
    title: 'Joana Bendo',
    image: 'lib/images/pessoa3.png',
  ),
];

const dummyThingy = [
  Thingy(
      id: 'c1',
      title: 'Receba sua cesta!',
      image: 'lib/images/food-basket.jpg',
      description:
          'A AgroFood te entrega uma cesta de orgânicos em casa produzida por agricultores familiares'),
  Thingy(
      id: 'c2',
      title: 'Apoie uma causa!',
      image: 'lib/images/caridade3.jpeg',
      description:
          'A cada 10 cestas compradas, 1 cesta é doada para alguém em situação de fome.'),
];
