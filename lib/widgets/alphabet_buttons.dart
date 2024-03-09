import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:know_ur_words/models/alphabet.dart';
import 'package:know_ur_words/provider/game_controller.dart';
import 'package:know_ur_words/widgets/app_container.dart';

class AlphabetButtons extends ConsumerWidget {
  const AlphabetButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final controller = ref.watch(gameControllerProvider);

    onTap(String letter) {
      ref.read(gameControllerProvider.notifier).addLetter(letter);
    }

    return AppContainer(
      width: size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 12,
          spacing: 12,
          children: [
            ...GameAlphabet.alphabet.map(
              (e) => SizedBox(
                width: 48,
                height: 48,
                child: OutlinedButton(
                  onPressed: controller.usedLetters.contains(e)
                      ? null
                      : () => onTap(e),
                  child: Visibility(
                    visible: controller.usedLetters.contains(e) ? false : true,
                    child: Center(
                      child: Text(
                        e,
                        style: theme.textTheme.titleLarge!.copyWith(
                          fontSize: 32,
                          color:
                              controller.nextLetter == e ? Colors.green : null,
                          // decoration: controller.usedLetters.contains(e)
                          //     ? TextDecoration.lineThrough
                          //     : null,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
