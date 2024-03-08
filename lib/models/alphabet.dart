class GameAlphabet {
  static const List<String> alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  final List<String> usedLetters;
  final String nextLetter;

  GameAlphabet.empty()
      : usedLetters = [],
        nextLetter = '';

  const GameAlphabet({
    required this.usedLetters,
    required this.nextLetter,
  });

  GameAlphabet copyWith({
    List<String>? usedLetters,
    String? nextLetter,
  }) {
    return GameAlphabet(
      usedLetters: usedLetters ?? this.usedLetters,
      nextLetter: nextLetter ?? this.nextLetter,
    );
  }
}
