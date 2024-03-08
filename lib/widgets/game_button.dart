import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:know_ur_words/provider/game_controller.dart';
import 'package:know_ur_words/utils/string_hardcoded.dart';
import 'package:know_ur_words/widgets/timer.dart';

class GameButton extends ConsumerWidget {
  const GameButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        ref.read(gameControllerProvider.notifier).pushLetterToList();
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: size.width * 0.8,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: theme.primaryColor),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.repeat,
              color: theme.primaryColor,
              size: 64,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Next Player".hardcoded,
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CountdownTimer(
              onFinished: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Time's up".hardcoded),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              ref
                                  .read(gameControllerProvider.notifier)
                                  .resetList();
                              Navigator.of(context).pop();
                            },
                            child: Text("Restart".hardcoded)),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}