import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'thememode_provider.g.dart';

@riverpod
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() {
    return ThemeMode.system == ThemeMode.dark
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  get isDark => state == ThemeMode.dark;
  get isLight => state == ThemeMode.light;

  void toggle() {
    state = isDark ? ThemeMode.light : ThemeMode.dark;
  }
}
