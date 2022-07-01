import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final locaisParaEstudarCategory = Category(
  categoryId: 1,
  name: " Locais para estudar",
  icon: Icons.location_on,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "Meetup",
  icon: Icons.location_on,
);

final noticiasCategory = Category(
  categoryId: 3,
  name: " Noticias Académicas ",
  icon: Icons.golf_course,
);

final entrevistaCategory = Category(
  categoryId: 4,
  name: "Entrevistas",
  icon: Icons.cake,
);

final praxesCategory = Category(
  categoryId: 5,
  name: "Praxes",
  icon: Icons.cake,
);
final podcastCategory = Category(
  categoryId: 6,
  name: "Podcast",
  icon: Icons.cake,
);


final categories = [
  allCategory,
  locaisParaEstudarCategory,
  meetUpCategory,
  noticiasCategory,
  entrevistaCategory,
  praxesCategory,
  podcastCategory,
];
