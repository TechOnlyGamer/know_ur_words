import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:know_ur_words/utils/string_hardcoded.dart';
import 'package:know_ur_words/widgets/alphabet_buttons.dart';
import 'package:know_ur_words/widgets/game_button.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pick ur Category".hardcoded,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const GameButton(),
                SizedBox(
                  height: size.height * 0.05,
                ),
                const AlphabetButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
