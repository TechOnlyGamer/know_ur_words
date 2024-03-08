import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:know_ur_words/provider/countdown_controller.dart';
import 'package:know_ur_words/utils/string_hardcoded.dart';
import 'package:timer_count_down/timer_count_down.dart';

class CountdownTimer extends ConsumerWidget {
  const CountdownTimer({
    super.key,
    required this.onFinished,
  });

  final Function onFinished;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(countdownControllerProvider);
    return Container(
      alignment: Alignment.center,
      child: Countdown(
        seconds: 10,
        build: (_, double time) => Text(
          "${time.toString()} seconds left".hardcoded,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        controller: controller,
        interval: const Duration(milliseconds: 100),
        onFinished: onFinished,
      ),
    );
  }
}
