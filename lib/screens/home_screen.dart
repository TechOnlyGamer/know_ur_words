import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:know_ur_words/config/router.dart';
import 'package:know_ur_words/utils/string_hardcoded.dart';
import 'package:know_ur_words/widgets/app_container.dart';
import 'package:know_ur_words/widgets/help_button.dart';
import 'package:know_ur_words/widgets/thememode_toggle_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        actions: const [
          ThemeModeButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppContainer(
                width: size.width * 0.8,
                height: size.height * 0.2,
                child: Text(
                  "Welcome to \nKnow Ur Words".hardcoded,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => context.goNamed(AppRoutes.game.name),
                child: AppContainer(
                  width: size.width * 0.5,
                  height: size.height * 0.1,
                  child: Text("Start Game".hardcoded),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              const HelpButton()
            ],
          ),
        ),
      ),
    );
  }
}
