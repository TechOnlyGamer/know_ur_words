import 'package:know_ur_words/models/game_categorie.dart';
import 'package:know_ur_words/utils/string_hardcoded.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_controller.g.dart';

@riverpod
class CategoryController extends _$CategoryController {
  @override
  GameCategory build() {
    return "Custom".hardcoded;
  }

  set value(String value) {
    print(value);
    state = value;
  }
}
