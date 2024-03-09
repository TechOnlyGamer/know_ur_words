import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:know_ur_words/provider/thememode_provider.dart';
import 'package:know_ur_words/widgets/app_container.dart';

class ThemeModeButton extends ConsumerWidget {
  const ThemeModeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final thememodeController = ref.watch(themeModeControllerProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: IconButton(
          onPressed: () =>
              ref.read(themeModeControllerProvider.notifier).toggle(),
          icon: Icon(
            Icons.mode_night_outlined,
            color: theme.colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
