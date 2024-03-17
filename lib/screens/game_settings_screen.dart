import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:know_ur_words/config/router.dart';
import 'package:know_ur_words/models/game_categorie.dart';
import 'package:know_ur_words/provider/category_controller.dart';
import 'package:know_ur_words/utils/string_hardcoded.dart';
import 'package:know_ur_words/widgets/app_container.dart';

class GameSettingsScreen extends ConsumerWidget {
  const GameSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final categories = ref.watch(gameCategoriesListProvider);
    final controller = ref.watch(categoryControllerProvider);
    final textController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: size.height * 0.4,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text(
              "Pick your Game Settings".hardcoded,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            DropdownMenu(
              enableSearch: false,
              initialSelection: controller,
              width: size.width * 0.8,
              hintText: "Select Category or type your own".hardcoded,
              dropdownMenuEntries: [
                const DropdownMenuEntry(value: "Custom", label: "Custom"),
                ...categories.map((e) => DropdownMenuEntry(value: e, label: e))
              ],
              onSelected: (value) =>
                  ref.read(categoryControllerProvider.notifier).value = value!,
            ),
            const SizedBox(height: 16),
            AppContainer(
              width: size.width * 0.8,
              child: TextField(
                readOnly: controller == "Custom" ? false : true,
                controller: textController,
                decoration: InputDecoration(
                  hintText: "Enter your custom category".hardcoded,
                ),
                onEditingComplete: () => ref
                    .read(categoryControllerProvider.notifier)
                    .value = textController.text,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                context.goNamed(AppRoutes.game.name);
              },
              child: AppContainer(
                width: size.width * 0.8,
                height: size.height * 0.1,
                child: Text("Let's Go!".hardcoded,
                    style: theme.textTheme.titleLarge),
              ),
            )
          ],
        ),
      ),
    );
  }
}
