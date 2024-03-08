import 'package:know_ur_words/models/alphabet.dart';
import 'package:know_ur_words/provider/countdown_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'game_controller.g.dart';

@riverpod
class GameController extends _$GameController {
  @override
  GameAlphabet build() {
    return GameAlphabet.empty();
  }

  void addLetter(String letter) {
    // state = [...state, letter];
    state = state.copyWith(nextLetter: letter);
  }

  void resetList() {
    state = GameAlphabet.empty();
    ref.read(countdownControllerProvider).restart();
  }

  void pushLetterToList() {
    state = state.copyWith(
        usedLetters: [...state.usedLetters, state.nextLetter], nextLetter: '');
    ref.read(countdownControllerProvider).restart();
  }
}
