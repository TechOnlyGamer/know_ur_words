import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:know_ur_words/provider/category_controller.dart';
import 'package:know_ur_words/widgets/alphabet_buttons.dart';
import 'package:know_ur_words/widgets/game_button.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final categorie = ref.watch(categoryControllerProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: theme.colorScheme.background,
        title: Text(
          categorie,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
