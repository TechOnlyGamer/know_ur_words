import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:timer_count_down/timer_controller.dart';

part 'countdown_controller.g.dart';

@riverpod
CountdownController countdownController(CountdownControllerRef ref) {
  return CountdownController(autoStart: true);
}
