import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_categorie.g.dart';

typedef GameCategory = String;

const List<GameCategory> categories = <GameCategory>[
  "Automarke",
  "Fluß",
  "Land",
  "Sportarten",
  "Stadt",
  "Tier",
];

@riverpod
List<GameCategory> gameCategoriesList(GameCategoriesListRef ref) {
  return categories;
}
