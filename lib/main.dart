import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:know_ur_words/config/router.dart';
import 'package:know_ur_words/provider/thememode_provider.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(themeModeControllerProvider);

    return MaterialApp.router(
      routerConfig: router,
      title: 'Know ur Words',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        scheme: FlexScheme.deepBlue,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.blueWhale,
      ),
      themeMode: themeController,
    );
  }
}
