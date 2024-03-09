import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categorie.g.dart';

typedef Category = String;

const List<Category> categories = <Category>[
  "Automarke",
  "Fluss",
  "Land",
  "Sportarten",
  "Stadt",
  "Tier",
];

@riverpod
List<Category> categoriesList(CategoriesListRef ref) {
  return categories;
}
